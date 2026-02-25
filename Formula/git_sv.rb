class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.13/git_sv-v0.3.13-aarch64-apple-darwin.tar.gz"
      sha256 "fccd45a181cd22dcf3d2fd6a3238e65c6f73d4e7913028a88e292d3da5435670"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.13/git_sv-v0.3.13-x86_64-apple-darwin.tar.gz"
      sha256 "f0669236856c045214f5863dc5489023cef70791a8d437f7b3b2b133a25d9eb9"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.13/git_sv-v0.3.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8be2a858886c9fe00033e53395f58a14eef55992a8d285ab315ca361f002ce04"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
