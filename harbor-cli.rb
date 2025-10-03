class harbor-cli < Formula
  desc "Harbor CLI - A command-line interface for CNCF Harbor, the cloud native registry!"
  homepage "https://github.com/goharbor/harbor-cli"
  license "Apache 2.0" 
  version "v1.0.11" 

  if Hardware::CPU.intel?
    url "https://github.com/goharbor/harbor-cli/releases/download/v1.0.11/harbor-cli_v1.0.11_darwin_amd64.tar.gz"
    sha256 "26a1b75d0f2ea01af1bf369414bb1d57120e224be4d108d15d917adafb0a6665"
  end

  if Hardware::CPU.arm?
    url "https://github.com/goharbor/harbor-cli/releases/download/v1.0.11/harbor-cli_v1.0.11_darwin_arm64.tar.gz"
    sha256 "0b7de8a712203ca7e05361341c50847937b1b14b8ee080f157c0a5a05daabe71"
  end

  def install
    bin.install "harbor-cli"
  end

  test do
    system "#{bin}/harbor-cli", "--version"
  end
end
