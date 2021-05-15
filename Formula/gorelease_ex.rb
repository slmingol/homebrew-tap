# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.106"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.106/gorelease_ex_0.0.106_Darwin_x86_64.tar.gz"
    sha256 "861aa5e8ed65c3502bd2248f615af2d98413ed49e7dbdbcc6749d5e93a03dc4c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.106/gorelease_ex_0.0.106_Linux_x86_64.tar.gz"
    sha256 "79f99f1edf63febb23548d35bc55ea729f777ba6f78f891670e2f10c90464ca9"
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
