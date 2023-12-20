# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.36.0/imposter_0.36.0_darwin_arm64.tar.gz"
      sha256 "fb092291c193d46779f0f398a0c84d85b8cd503c1c9ae7768794cd1852714f2c"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.36.0/imposter_0.36.0_darwin_amd64.tar.gz"
      sha256 "f0c2e5a482abb3b18469ce3afbc1fb08f181079476e86fc60fd358744fc1d09f"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.36.0/imposter_0.36.0_linux_armv6.tar.gz"
      sha256 "dbbfcfe453ef6f72f5f9437e031645dd017af1d2894779a7ebb94c9fec0a8b61"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.36.0/imposter_0.36.0_linux_arm64.tar.gz"
      sha256 "46143e39604d6e26c16b1f7fd66ef27fcbc2bc83c30da1583d80240c28d85f89"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.36.0/imposter_0.36.0_linux_amd64.tar.gz"
      sha256 "415d8091ad501c38eb13a183ec7d8acaf6a59ca4a9ac57be51071f3d51112592"

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
