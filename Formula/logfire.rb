# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "4.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v4.3/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "db8c04846d6296ae9653e2a90eda022b6201764a24df8b29a59d8938cd69e875"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v4.3/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2aa157b1b65d28e594ebc2f7d29b55cc01270ed13ac606783e0807c0d67adf61"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end
