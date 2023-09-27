# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KuberoCli < Formula
  desc "Manage your kubero applications with the CLI"
  homepage "https://www.kubero.dev"
  version "1.10.0-beta.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0-beta.8/kubero-cli_darwin_amd64.tar.gz"
      sha256 "3b499e53ef48bf61507e2534ce4435874f7b5afc8480e00514fd5a8444df1520"

      def install
        bin.install "kubero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0-beta.8/kubero-cli_darwin_arm64.tar.gz"
      sha256 "2bd22248405f1d735f576bef81f53644b76d7be1eb62bfa3e70fc599ddc94892"

      def install
        bin.install "kubero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0-beta.8/kubero-cli_linux_arm64.tar.gz"
      sha256 "00fc717eee7e52510da6d7e08533c046f564d04b9c405a9c662f32ae07044769"

      def install
        bin.install "kubero"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0-beta.8/kubero-cli_linux_amd64.tar.gz"
      sha256 "6b1a28a4292938cde87a7e0dc5a0592179ce6611d55dbd40d0c5095d3bab07d1"

      def install
        bin.install "kubero"
      end
    end
  end

  test do
    system "#{bin}/kubero", "--version"
  end
end
