# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class GoreleaseEx < Formula
  desc "Software to create fast and easy drum rolls."
  homepage ""
  version "0.0.49"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.49/gorelease_ex_0.0.49_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "ff0e2ce6ec70df1f61ddf36765f7217499487329e107c7c70e2863fc1cf332f2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/slmingol/gorelease_ex/releases/download/0.0.49/gorelease_ex_0.0.49_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "dacadd47ca84367dd7a2cde99bc6d752a84b42d99b7c6e3c85816038236de9e6"
  end

  def install
    bin.install "gorelease_ex"
  end
end
