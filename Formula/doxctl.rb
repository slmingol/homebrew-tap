# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doxctl < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/doxctl"
  version "0.0.12-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.12-alpha/doxctl_0.0.12-alpha_Darwin_x86_64.tar.gz"
    sha256 "95b1e0c4e722cdfb5f421ac2792a6709b3e4dd752953fef1e24602f83d84ed86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.12-alpha/doxctl_0.0.12-alpha_Linux_x86_64.tar.gz"
    sha256 "deaabcec00aa5df1cd10149c815d491f31472becf5016123634e2113ff7b7140"
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
