class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.6/git_sv-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "7d17415279ae4c141bca2d27d8cba4f80606db821bf37732e06fd0bc374adccc"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.6/git_sv-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "ae7bb0c213f1e8657e6d2e773efe2d23db2c420c4927332e583b8d37df901804"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.6/git_sv-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2bf5a55f6e0b34b0101ed7611ba691d0f79bf17e7a6bf14eb690a9ab3821f5dd"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
