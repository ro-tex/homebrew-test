# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TestAT0013 < Formula
  desc "test is simple tool that outputs the test lines of its input"
  homepage "https://github.com/ro-tex/test"
  version "0.0.13"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ro-tex/test/releases/download/v0.0.13/test_0.0.13_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "84f1337eddb098211e1157bbac1686e0e32bf1896190aa9d65c0665067083a07"

      def install
        bin.install "test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ro-tex/test/releases/download/v0.0.13/test_0.0.13_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "992ee62c05c9157383ed00940d4b854d0fde3b0b19e7b3fadb845bd0546e62d0"

      def install
        bin.install "test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ro-tex/test/releases/download/v0.0.13/test_0.0.13_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bae43f034c7aa546fe127987d0cb892cbf945b45eed72f0ae4c601d61bc1902f"

      def install
        bin.install "test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ro-tex/test/releases/download/v0.0.13/test_0.0.13_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ed301ba3bfdaf8ddb23646277e49d6bcb05a99067b5e6c35fc49474fe373a163"

      def install
        bin.install "test"
      end
    end
  end
end
