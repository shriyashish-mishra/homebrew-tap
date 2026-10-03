class Wbi < Formula
  desc "Coordination layer for teams building software with humans and AI coding agents"
  homepage "https://github.com/shriyashish-mishra/who-broke-it"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.1/wbi_0.2.1_darwin_arm64.tar.gz"
      sha256 "eebb3a26532d8938d8e72a21496f38785b77a8b04ec5bf7d5bb4aec7fedb8ccb"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.1/wbi_0.2.1_darwin_amd64.tar.gz"
      sha256 "7b3aabf032e81ae35db685095dd5f4bee967388a35257a4c2131bf46e2f0ef34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.1/wbi_0.2.1_linux_arm64.tar.gz"
      sha256 "ff5bb93ba0e068169c6105f909ebdf0db662470f7c82ed352c8ba5bf66aa0902"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.1/wbi_0.2.1_linux_amd64.tar.gz"
      sha256 "e56b82e34e018a661a9cd126094830f79468dd0bd312f6d3a155e77e330f1d72"
    end
  end

  def install
    bin.install "wbi"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/wbi version")
  end
end
