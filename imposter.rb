# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.32.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.32.0/imposter_0.32.0_macOS_arm64.tar.gz"
      sha256 "cf70bae39558d12f718fa3ba16dff0218b404f9d768c13ae945e17567703f3e8"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.32.0/imposter_0.32.0_macOS_x86_64.tar.gz"
      sha256 "757c6e15bd8fba5637361215a070d84e1af834757f3d8af8710cc047a63a3170"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.32.0/imposter_0.32.0_Linux_x86_64.tar.gz"
      sha256 "5a3a3bb133d6c9dea34fff24ca8db2e0bb6c54ffd470f2668a907f2afa9b208b"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.32.0/imposter_0.32.0_Linux_armv6.tar.gz"
      sha256 "b001418a1b2d6ca655285a89eb95dbfda44a0e8972b908b9a7b8b4c0bf67aaf8"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.32.0/imposter_0.32.0_Linux_arm64.tar.gz"
      sha256 "22d8c1fc8af43e892355c41aa97bb9b54bc12b1ba78afd0ab83afac946eb6b83"

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
