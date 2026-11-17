class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.6/git_sv-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "955167603f9073768ff4d98638ce0a835154a679a75561f5ecd731e0e63ecb1c"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.6/git_sv-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "a822607a1ecc456890b37a1b619c48a7b450ea3deb8174d41457e92c89979802"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.6/git_sv-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1e0b7f81bb11b5c05e656f16f82fa335eede0fee80143b4e5a7fd9b2c7355517"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
