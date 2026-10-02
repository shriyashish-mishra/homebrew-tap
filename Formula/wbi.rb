class Wbi < Formula
  desc "Coordination layer for teams building software with humans and AI coding agents"
  homepage "https://github.com/shriyashish-mishra/who-broke-it"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.0/wbi_0.2.0_darwin_arm64.tar.gz"
      sha256 "fb8df21aae61939271dd1e35a1d75d88643b33c246224d2e0f0642531db67ba7"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.0/wbi_0.2.0_darwin_amd64.tar.gz"
      sha256 "3715f6b8de8c154e564f9ab8b7b9f65b215658f2ffa183686021ade90c5a837b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.0/wbi_0.2.0_linux_arm64.tar.gz"
      sha256 "520c4d8a380a80b17a6a1862847df51cbb3f96e3415f4ab9fdca28bf7389291f"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.2.0/wbi_0.2.0_linux_amd64.tar.gz"
      sha256 "097f91614a0db97a0ebef4d82a21bc60c11eee044288912fe83f92862260f2c6"
    end
  end

  def install
    bin.install "wbi"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/wbi version")
  end
end
