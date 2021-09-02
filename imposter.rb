# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://github.com/gatehill/imposter-cli"
  version "0.3.7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.3.7/imposter_0.3.7_macOS_x86_64.tar.gz"
      sha256 "b5d21086642c6a2a87bc92a37bf7a19a171669ba9a59394b5edf27ebb0b2106e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.3.7/imposter_0.3.7_macOS_arm64.tar.gz"
      sha256 "e49a4c54ede2ec90f7613ff7aaca451d4fc0e3abcd04633eb53969e6d84062fb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.3.7/imposter_0.3.7_Linux_x86_64.tar.gz"
      sha256 "39d67da425408f294d0d0a2a3394ab921b246cf24dbee18072a2cd7214dec27c"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.3.7/imposter_0.3.7_Linux_armv6.tar.gz"
      sha256 "cd15fa316ad499b5d4b078d3c0ba77a3c14396070f9f1499d94da998fd09b272"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.3.7/imposter_0.3.7_Linux_arm64.tar.gz"
      sha256 "5a0c72ecdbbf3c8ca4adeb614a37321bf81ffe1d8261a9e70914e63f4f7401bf"
    end
  end

  def install
    bin.install "imposter"
  end

  def caveats; <<~EOS
    Requires Docker to be installed.
  EOS
  end
end
