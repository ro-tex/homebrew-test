# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Test < Formula
  desc "test is simple tool that outputs the test lines of its input"
  homepage "https://github.com/ro-tex/test"
  version "0.0.12"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ro-tex/test/releases/download/v0.0.12/test_0.0.12_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "de9d7128f67b094ddacc61a8eaae7cde80f51131318afac243c35d9f65cadc85"

      def install
        bin.install "test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ro-tex/test/releases/download/v0.0.12/test_0.0.12_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a3032c86fd114950de20ef8485e9bcd26a1d99146be75541e8ac02b3e41711e5"

      def install
        bin.install "test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ro-tex/test/releases/download/v0.0.12/test_0.0.12_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "34f67445a8c3092417263c573c6b3266468639e90adb9946716f33ea39f86f42"

      def install
        bin.install "test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ro-tex/test/releases/download/v0.0.12/test_0.0.12_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "192a683be8e781ba45236231a947baf20f6a15574d67b5dd1967a6caaa87640b"

      def install
        bin.install "test"
      end
    end
  end
end
