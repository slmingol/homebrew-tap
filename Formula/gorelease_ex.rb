# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.66"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.66/gorelease_ex_0.0.66_Darwin_x86_64.tar.gz"
    sha256 "16a540b40cf39ec16e733ac985e31f9d02ef676ed5c377da82da129adef7507a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.66/gorelease_ex_0.0.66_Linux_x86_64.tar.gz"
    sha256 "9b4bac8ccb6021797dc0ace9572ebe9780049d679aab845f824d5802ceb2d3bd"
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
