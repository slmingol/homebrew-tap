# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.61"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.61/gorelease_ex_0.0.61_Darwin_x86_64.tar.gz"
    sha256 "68b7ad6fc813144292569839680af0a30768e77abda1c10c4cbed3e664a2ee8c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.61/gorelease_ex_0.0.61_Linux_x86_64.tar.gz"
    sha256 "90976a8a14ddf595f324ce852bf4933eca814dc3a4322c8f7aa4c08e70f357ef"
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
