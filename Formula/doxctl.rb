# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doxctl < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/doxctl"
  version "0.0.25-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.25-alpha/doxctl_0.0.25-alpha_Darwin_x86_64.tar.gz"
    sha256 "ef7654fde8dc90be0adc9c5d794aaf4d8f1828f8e9d7d8001358448da7084cc8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.25-alpha/doxctl_0.0.25-alpha_Linux_x86_64.tar.gz"
    sha256 "48cd26b8bb0d80af226c377363b4f36ecc20b3ff7f04e8b9f56b4eabd6f0eb4b"
  end

  depends_on "go"
  depends_on "coreutils"

  def install
    bin.install "doxctl"
  end

  test do
    system "#{bin}/doxctl"
  end
end
