class Wbi < Formula
  desc "Coordination layer for teams building software with humans and AI coding agents"
  homepage "https://github.com/shriyashish-mishra/who-broke-it"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.1/wbi_0.1.1_darwin_arm64.tar.gz"
      sha256 "d1101295a79fbb1822de5e91c217d3d647e714d1efd3a7259b43c49e7c2e692d"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.1/wbi_0.1.1_darwin_amd64.tar.gz"
      sha256 "b75abdda32ed8810565225f8548b10bad779513f80c4f2f1028bf992cef5072d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.1/wbi_0.1.1_linux_arm64.tar.gz"
      sha256 "f75c226619451825071fcdc30f50895c9b5e2927e113759dc43b81d754a40f6f"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.1/wbi_0.1.1_linux_amd64.tar.gz"
      sha256 "483bf91022933610f9276527c088f37d4955bc862c6c18500c58d24eff35ac60"
    end
  end

  def install
    bin.install "wbi"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/wbi version")
  end
end
