# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KuberoCli < Formula
  desc "Manage your kubero applications with the CLI"
  homepage "https://www.kubero.dev"
  version "1.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0/kubero-cli_darwin_amd64.tar.gz"
      sha256 "9794ae267825379239df77aa41c9ce444e2cf7ae531d0ed4ef64eb7dfd3d419a"

      def install
        bin.install "kubero"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0/kubero-cli_darwin_arm64.tar.gz"
      sha256 "15b99df3397fa8fe8efac27fe8dea297a2cb548f59778492e6a3ccceef7cc3b9"

      def install
        bin.install "kubero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0/kubero-cli_linux_arm64.tar.gz"
      sha256 "3319769c65ce9680f27d72174b327184b24c9a9805f06d187d3a60376baa1e1b"

      def install
        bin.install "kubero"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v1.10.0/kubero-cli_linux_amd64.tar.gz"
      sha256 "338bbf3c45392e4e69722a4285771fe22f53cc14e1b360276621e979220ead10"

      def install
        bin.install "kubero"
      end
    end
  end

  test do
    system "#{bin}/kubero", "--version"
  end
end
