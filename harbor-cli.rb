class HarborCli < Formula
  desc "Harbor CLI for interacting with Harbor registry"
  homepage "https://goharbor.io"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bupd/harbor-cli/releases/download/v0.0.12/harbor-cli_0.0.12_darwin_amd64.tar.gz"
      sha256 "1dfc71f9ed1cd8cc7b2cb7593f67a6be98918f637972ac2bca510fc3f4ed0783" # amd64

      def install
        bin.install "harbor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bupd/harbor-cli/releases/download/v0.0.12/harbor-cli_0.0.12_darwin_arm64.tar.gz"
      sha256 "43e44daf231af6025b8faa1ebfb6874ad07e0860ffab60e9caf6b5e9cc499e71" # arm64

      def install
        bin.install "harbor"
      end
    end
  end

  test do
    system "#{bin}/harbor", "version"   # Formula test (after install)
  end
end
