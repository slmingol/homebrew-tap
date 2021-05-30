# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doxctl < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/doxctl"
  version "0.0.23-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.23-alpha/doxctl_0.0.23-alpha_Darwin_x86_64.tar.gz"
    sha256 "96036727659ff5e366f3e58c96b635e284a2e8504c07f6ef2da3d1b876cf2c24"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.23-alpha/doxctl_0.0.23-alpha_Linux_x86_64.tar.gz"
    sha256 "414ae7e7bb719274f720fdb7eb69f276853842638dc7a959a9c783bee3184f10"
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
