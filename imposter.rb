# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.1/imposter_1.0.1_darwin_amd64.tar.gz"
      sha256 "46f9e0efd5587b1d981d856d64602cc7ab54749749771f8bb14b7aaf6f39add6"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.1/imposter_1.0.1_darwin_arm64.tar.gz"
      sha256 "887fc63bd8f6190d2fc4840b6d25429f2fa5c68c542f7cba6c354588a137c6fc"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.1/imposter_1.0.1_linux_amd64.tar.gz"
        sha256 "9b2b57e9e9b23cad32cfb05503f48c87091d2e01551603ee40a20ab328ee592c"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.1/imposter_1.0.1_linux_armv6.tar.gz"
        sha256 "b35930ec32ffc1287510b93777df4f83a6cb81f375a7f34a1f5f8946da5c3557"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.1/imposter_1.0.1_linux_arm64.tar.gz"
        sha256 "246f35a8c1e4843ede64ed500eb840c2a621c0edfb4e8eb606273610dc9d97c7"

        def install
          bin.install "imposter"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Requires Docker to be installed.
    EOS
  end
end
