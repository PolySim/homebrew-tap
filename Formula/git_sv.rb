class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.25/git_sv-v0.3.25-aarch64-apple-darwin.tar.gz"
      sha256 "86a86e18df5c4fa77b5d601e6dacd9c691c42bf52202d280d246aa047b59dd67"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.25/git_sv-v0.3.25-x86_64-apple-darwin.tar.gz"
      sha256 "199a1b3aa499423100f563bd2cf7a370e3f9cebe9432996704e27c1026ac9351"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.25/git_sv-v0.3.25-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a75679a3f79dea651b40379801ff00120d6b56cada43a4f8b8995288833ad358"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
