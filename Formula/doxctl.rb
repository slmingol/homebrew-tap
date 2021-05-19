# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doxctl < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/doxctl"
  version "0.0.4-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.4-alpha/doxctl_0.0.4-alpha_Darwin_x86_64.tar.gz"
    sha256 "c00125f8a72f11bf7ee3cab161711bd001a98c62db06932ac248d042f11c6937"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.4-alpha/doxctl_0.0.4-alpha_Linux_x86_64.tar.gz"
    sha256 "42df7b43561bd994390a6c081620e6736311eef7f8be32034f179a291ce9a106"
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
