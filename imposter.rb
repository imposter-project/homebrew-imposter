# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.25.0/imposter_0.25.0_macOS_arm64.tar.gz"
      sha256 "9afd1ff837c1ec0ada33f0010a9c00d825cef1c7376277932cc1dbcb0502a55c"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.25.0/imposter_0.25.0_macOS_x86_64.tar.gz"
      sha256 "25f8877bcee66db37f2801b3618291c0daab0f41d26910c04f55912b39d7415d"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.25.0/imposter_0.25.0_Linux_armv6.tar.gz"
      sha256 "7f0773e45ea54a0b5922c62ee308e966a1b84cfd7de6b1c92d38859297ddffb1"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.25.0/imposter_0.25.0_Linux_x86_64.tar.gz"
      sha256 "0bf18b36b62a91d9045ec28a8952ccc92fff5751b0ad7fa21fc821f2b547d383"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.25.0/imposter_0.25.0_Linux_arm64.tar.gz"
      sha256 "0bba0dba54b9a0ea21b190baf98d5357e0ccf273ee7136d2c73ce5863949f71f"

      def install
        bin.install "imposter"
      end
    end
  end

  def caveats
    <<~EOS
      Requires Docker to be installed.
    EOS
  end
end
