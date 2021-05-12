# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.84"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.84/gorelease_ex_0.0.84_Darwin_x86_64.tar.gz"
    sha256 "b34f50199eea40f8c4508df32512b02e503015c3cbfc337fea61c8720ea03fc3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.84/gorelease_ex_0.0.84_Linux_x86_64.tar.gz"
    sha256 "bdb7289a498992aabfcedc244e05dc1b96f2264952e9c4a229b0bf0e2b84ff52"
  end

  depends_on "go"
  depends_on "coreutils"

  def install
    bin.install "gorelease_ex"
  end

  test do
    system "#{bin}/gorelease_ex"
  end
end
