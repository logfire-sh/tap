# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli-private"
  version "0.1.27"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "git@github.com:logfire-sh/cli-private/releases/download/v0.1.27/logfire_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
    sha256 "e9baf37274a60cbf8e9b465c636445e5f169b2c9fc7a71dae5e536a882933056"

    def install
      bin.install "logfire"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Logfire
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "git@github.com:logfire-sh/cli-private/releases/download/v0.1.27/logfire_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "cf599cb931202dffc2f90e5eba64a734c506e1ffbd07b7b933f389b50b9246d8"

      def install
        bin.install "logfire"
      end
    end
  end

  service do
    run: logfire
  end

  test do
    system "#{bin/logfire}"
  end
end
