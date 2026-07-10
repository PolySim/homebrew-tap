class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.38/git_sv-v0.3.38-aarch64-apple-darwin.tar.gz"
      sha256 "d0f1231129201c402b3f028b0b8e058d0c5ad5bd7beb042aff35da15fdc72553"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.38/git_sv-v0.3.38-x86_64-apple-darwin.tar.gz"
      sha256 "c0a72693ae754a6e74a854727c3b901f7c57ec8b498f315d1301bd535e792e43"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.38/git_sv-v0.3.38-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b85a5758cb7b77eeee9a2a9f9818440a748f170d3f0b5518492f391e2ae229e7"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
