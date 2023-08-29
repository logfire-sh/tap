# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "2.9"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v2.9/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "898224582a3a946a90cc29b36f48ad6ed3ec2b116057be755b1773123e362725"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v2.9/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "01bb04757ea8fade25552793dc4c4e58ddfad318cb2e08ec8975412033ed53de"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
