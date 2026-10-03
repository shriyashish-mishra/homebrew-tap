class Wbi < Formula
  desc "Coordination layer for teams building software with humans and AI coding agents"
  homepage "https://github.com/shriyashish-mishra/who-broke-it"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.2/wbi_0.2.2_darwin_arm64.tar.gz"
      sha256 "f2e683810a2d327352138d64d8a32f75dc4509a32345bd29ddf4670d04fc87d5"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.2/wbi_0.2.2_darwin_amd64.tar.gz"
      sha256 "b81b8ada573be902185e3b4cb0bc9f132bd33e8446c815ec17c9b9858996e245"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.2/wbi_0.2.2_linux_arm64.tar.gz"
      sha256 "514f2e3550f690a8f868e91cd45572e10760784a1a9bc444a352f43ada6aa8f0"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.2/wbi_0.2.2_linux_amd64.tar.gz"
      sha256 "0b0290390661c4737a8eecc66f944a1717472c3a1b8ca08ba501ce093844c739"
    end
  end

  def install
    bin.install "wbi"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/wbi version")
  end
end
