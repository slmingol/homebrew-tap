# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.69"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.69/gorelease_ex_0.0.69_Darwin_x86_64.tar.gz"
    sha256 "bcc8586d5e8d86b052c525ec1267dbfaf5d79a7552a90d9fe9b923d1ec815a3e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.69/gorelease_ex_0.0.69_Linux_x86_64.tar.gz"
    sha256 "a8c81e6f6b8d327a583c925412dab39b68fb1c242068252b13fdcdea202ffb83"
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
