# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.41.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.41.3/imposter_0.41.3_darwin_amd64.tar.gz"
      sha256 "7b8be6ed5d44e44c38dc84abf44eaad9b5a314a5cd05e4b808154c3b29b810af"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.41.3/imposter_0.41.3_darwin_arm64.tar.gz"
      sha256 "d9455bce95d0f565fd00f9b8918a9f29dcbf0b03d2b75e7228ac3b7477c14ead"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.41.3/imposter_0.41.3_linux_amd64.tar.gz"
      sha256 "ff486d7d6fa4059aef02897ae31c7202a9df3aa39a6c1f7048ad230088e08e0c"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.41.3/imposter_0.41.3_linux_armv6.tar.gz"
      sha256 "920b3a5a5d4ee67d040e895c5dfe5cab298e602103f7ce508859d245d469a365"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.41.3/imposter_0.41.3_linux_arm64.tar.gz"
      sha256 "b94b6362f0de8aba258e42f38241aeadacdc7ffbe012f0f6d1af628d4683692b"

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
