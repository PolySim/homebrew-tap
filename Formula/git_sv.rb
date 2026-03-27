class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.28/git_sv-v0.3.28-aarch64-apple-darwin.tar.gz"
      sha256 "8c8c2f3806bb7ae49ac9d59f8a4f5ac2575a4c384ef9813bbfe64354f0042d78"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.28/git_sv-v0.3.28-x86_64-apple-darwin.tar.gz"
      sha256 "8334848c0561d59d8340de49bbad6c3986ff0e1542a4df2d384ed92780a91c42"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.28/git_sv-v0.3.28-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "85d3990fd33e8ebb57ee15adbb520b779cba3383bec256efafbdfa07eda6e745"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
