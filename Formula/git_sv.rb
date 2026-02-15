class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.1.0/git_sv-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a988729d3fc5d8594ef083abe220995747eb15a58f86f5bd6ba2211d4fa8c668"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.1.0/git_sv-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1e4d3db8ed093cbe9005d0610e55b57ee099bac2a0ff1052aff1c83832bf5cb"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.1.0/git_sv-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c4936f1ee1b571eaf3a3c7706ac0b49fbf35f594ce064bd789e3896ec4deeaab"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
