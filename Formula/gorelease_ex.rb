# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://www.github.com/slmingol/gorlease_ex"
  version "0.0.95"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.95/gorelease_ex_0.0.95_Darwin_x86_64.tar.gz"
    sha256 "67a7fcca7b641f6fb7588dbe67e1808dd3f7721291c192d4363370d407b475c5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.95/gorelease_ex_0.0.95_Linux_x86_64.tar.gz"
    sha256 "98d267767d8abbd0b8c31f7884656ee511c0dff557f04f792bf67859d0ad8be6"
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
