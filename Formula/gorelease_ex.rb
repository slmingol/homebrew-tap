# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.113"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.113/gorelease_ex_0.0.113_Darwin_x86_64.tar.gz"
    sha256 "4e4c94557a508052402960adb4f49fee813acdae860fd43cd9aadc338157f062"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.113/gorelease_ex_0.0.113_Linux_x86_64.tar.gz"
    sha256 "b69913aa414691be624a56104468fdb56249c22e9b33836ea0efce3d54627b37"
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
