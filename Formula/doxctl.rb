# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doxctl < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/doxctl"
  version "0.0.3-alpha"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.3-alpha/doxctl_0.0.3-alpha_Darwin_x86_64.tar.gz"
    sha256 "8d737441b4f9a727945284b7fc3d8fb9cbc60e49e873ba7cefb0a4649ef727c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/doxctl/releases/download/0.0.3-alpha/doxctl_0.0.3-alpha_Linux_x86_64.tar.gz"
    sha256 "729c19ee8dc499bc870364267c8a268de8a9c4254193381f95cd5ed98b75997e"
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
