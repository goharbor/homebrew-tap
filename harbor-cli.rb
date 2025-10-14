class HarborCli < Formula
  desc "Harbor CLI for interacting with Harbor registry"
  homepage "https://goharbor.io"
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goharbor/harbor-cli/releases/download/v0.0.12/harbor-cli_v0.0.12_darwin_amd64.tar.gz"
      sha256 "" # amd64

      def install
        bin.install "harbor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goharbor/harbor-cli/releases/download/v0.0.12/harbor-cli_v0.0.12_darwin_arm64.tar.gz"
      sha256 "" # arm64

      def install
        bin.install "harbor"
      end
    end
  end

  test do
    system "#{bin}/harbor", "version"   # Formula test (after install)
  end
end
