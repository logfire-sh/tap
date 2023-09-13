# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "6.7"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v6.7/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d2e1ce4b0d9e66838f75643e120e82d55f993d8a583e2bf061ec6d0d31d3de64"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v6.7/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "463bc6465ecdec9103324c80fded2fd60510fee1504669c293950b635af228f4"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
