#!/usr/bin/env python3
"""Update a homebrew formula to the latest release of an upstream repo."""

import re
import sys
import subprocess
import tempfile

def run(cmd):
    r = subprocess.run(cmd, capture_output=True, text=True, check=True)
    return r.stdout.strip()

def main():
    if len(sys.argv) != 4:
        print("usage: update-formula.py <owner/repo> <Formula/name.rb> <project_name>")
        sys.exit(1)

    repo, formula_path, project = sys.argv[1:]

    new_tag = run(['gh', 'api', f'repos/{repo}/releases/latest', '--jq', '.tag_name'])
    new_ver = new_tag.lstrip('v')

    with open(formula_path) as f:
        content = f.read()

    m = re.search(r'releases/download/([^/]+)/', content)
    if not m:
        print(f"ERROR: cannot find current release tag in {formula_path}", file=sys.stderr)
        sys.exit(1)

    current_tag = m.group(1)
    current_ver = current_tag.lstrip('v')

    if new_tag == current_tag:
        print(f"up-to-date: {formula_path} ({current_tag})")
        sys.exit(0)

    print(f"updating {formula_path}: {current_tag} -> {new_tag}")

    tmpdir = tempfile.mkdtemp()
    subprocess.run(
        ['gh', 'release', 'download', new_tag, '--repo', repo,
         '--pattern', 'checksums.txt', '-D', tmpdir, '--clobber'],
        check=True
    )

    checksums = {}
    with open(f'{tmpdir}/checksums.txt') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            sha, filename = line.split('  ', 1)
            checksums[filename] = sha

    platforms = [
        ('Darwin', 'amd64'),
        ('Darwin', 'arm64'),
        ('Linux',  'amd64'),
        ('Linux',  'arm64'),
    ]

    for os_name, arch in platforms:
        old_filename = f'{project}_{current_ver}_{os_name}_{arch}.tar.gz'
        new_filename = f'{project}_{new_ver}_{os_name}_{arch}.tar.gz'
        old_url = f'https://github.com/{repo}/releases/download/{current_tag}/{old_filename}'
        new_url = f'https://github.com/{repo}/releases/download/{new_tag}/{new_filename}'

        if new_filename not in checksums:
            print(f"ERROR: {new_filename} not in checksums.txt", file=sys.stderr)
            sys.exit(1)

        new_sha = checksums[new_filename]

        m = re.search(re.escape(old_url) + r'"\s*\n\s*sha256 "([a-f0-9]+)"', content)
        if not m:
            print(f"WARNING: url/sha pair not found for {old_filename}, skipping")
            continue

        old_sha = m.group(1)
        content = content.replace(old_url, new_url)
        content = content.replace(old_sha, new_sha)

    with open(formula_path, 'w') as f:
        f.write(content)

    print(f"done: {formula_path} updated to {new_tag}")
    # Signal to caller that an update was made
    print(f"::set-output name=updated::true")
    print(f"::set-output name=new_tag::{new_tag}")

if __name__ == '__main__':
    main()
