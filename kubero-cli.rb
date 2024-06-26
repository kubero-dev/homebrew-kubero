# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KuberoCli < Formula
  desc "Manage your kubero applications with the CLI"
  homepage "https://www.kubero.dev"
  version "2.3.2"

  on_macos do
    on_intel do
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.3.2/kubero-cli_darwin_amd64.tar.gz"
      sha256 "dd786343e1fadbaf141c599bb1cedb5c1a05b497696dd47e529a56812b9a69f9"

      def install
        bin.install "kubero"
      end
    end
    on_arm do
      url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.3.2/kubero-cli_darwin_arm64.tar.gz"
      sha256 "30beda804af4c8d49f70303635cd15a1006cfc0ca1d6b16ce225671971d5f35f"

      def install
        bin.install "kubero"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.3.2/kubero-cli_linux_amd64.tar.gz"
        sha256 "90469047109b8f54b7150ec949201ecdff3c1781563430c8c7de527c709cfc5d"

        def install
          bin.install "kubero"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubero-dev/kubero-cli/releases/download/v2.3.2/kubero-cli_linux_arm64.tar.gz"
        sha256 "5b72ef87eeba45aa126b5a6b46716152d39c84880df84ee2060d9f3f5ac5f01b"

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
