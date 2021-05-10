# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.70"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.70/gorelease_ex_0.0.70_Darwin_x86_64.tar.gz"
    sha256 "ae97ce07051e3dc151d674a9a072193f3eb35952d94b9a0659dd86186db7fd8e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.70/gorelease_ex_0.0.70_Linux_x86_64.tar.gz"
    sha256 "069e1222deed5d00e5fcca98f8c4a7229ab31843739054cefa231e9f6d0e22c0"
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
