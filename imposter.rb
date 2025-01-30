# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.46.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v0.46.2/imposter_0.46.2_darwin_amd64.tar.gz"
      sha256 "8c43e83a90b1eba7e82990f0a568c54bc5461ddbcc7b5fe80cfd8a1585851a0f"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v0.46.2/imposter_0.46.2_darwin_arm64.tar.gz"
      sha256 "8b709ca2461395ce3a1f944bdafbc2769208ac47eb3e1bb4ef266645860ebdde"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v0.46.2/imposter_0.46.2_linux_amd64.tar.gz"
        sha256 "49dc60ca61414846e800b8824a8690c0d70ac257bedffb749f25d8acb61b4293"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v0.46.2/imposter_0.46.2_linux_armv6.tar.gz"
        sha256 "a543f459def98a591d1837bc6aefb7e52c1114fb3f417e0c2a0fbe93d1680794"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v0.46.2/imposter_0.46.2_linux_arm64.tar.gz"
        sha256 "eafdd33e667f7daebe0280dc72dc010d58dd3407d3339ecadb9157278113ca02"

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
