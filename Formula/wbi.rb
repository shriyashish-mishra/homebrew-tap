class Wbi < Formula
  desc "Coordination layer for teams building software with humans and AI coding agents"
  homepage "https://github.com/shriyashish-mishra/who-broke-it"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.0/wbi_0.1.0_darwin_arm64.tar.gz"
      sha256 "1a79c793351e6cd1cfb51b46ba95353318557f623ae8e37f72ac97dea5254c96"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.0/wbi_0.1.0_darwin_amd64.tar.gz"
      sha256 "6c84c103c2d8fa612ec5633b270ae1b4a40ebf0353bba167ba435ac488770f20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.0/wbi_0.1.0_linux_arm64.tar.gz"
      sha256 "3876b9a1cecf473dd4657ea426d606ba5a73b913e72e3957910fcc71172e79b0"
    else
      url "https://github.com/shriyashish-mishra/who-broke-it/releases/download/v0.1.0/wbi_0.1.0_linux_amd64.tar.gz"
      sha256 "68d3e31c7b186ac061084d799df636138ef6ed214791f4e83957384af7cbdb47"
    end
  end

  def install
    bin.install "wbi"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/wbi version")
  end
end
