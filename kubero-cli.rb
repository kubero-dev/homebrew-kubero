# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KuberoCli < Formula
  desc "Manage your kubero applications with the CLI"
  homepage "https://www.kubero.dev"
  version "2.4.1"

  on_macos do
    on_intel do
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.4.1/kubero-cli_darwin_amd64.tar.gz"
      sha256 "0a077cded670f365f6712afb20c8b34090dd9a3783583533eb245339b3ec7657"

      def install
        bin.install "kubero"
      end
    end
    on_arm do
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.4.1/kubero-cli_darwin_arm64.tar.gz"
      sha256 "f4096fef5ec71f161de006f114489dcb2e76ef799704ffdca938173adcdb28c2"

      def install
        bin.install "kubero"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.4.1/kubero-cli_linux_amd64.tar.gz"
        sha256 "4938d84622fad03a94b0e39906099e683dc8d6f1a823f77daeae918c41f6bd31"

        def install
          bin.install "kubero"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.4.1/kubero-cli_linux_arm64.tar.gz"
        sha256 "bcac5dd9100a28db0efc4027d993a5076002b32c8b0e68ab32b42b99ffb77008"

        def install
          bin.install "kubero"
        end
      end
    end
  end

  test do
    system "#{bin}/kubero", "--version"
  end
end
