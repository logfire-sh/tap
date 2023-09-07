# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "4.7"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v4.7/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "71d7666c98c1940cef21dff67d52826676e5f6deaf6b7c3ea76a0a9eabcd93b6"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v4.7/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4cdc5b861dbe30381dbb607522bac24f81cc372f2b36f688586cf4bb5d70dd2a"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
