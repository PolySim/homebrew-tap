class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.7/git_sv-v0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "dd155ccd5efe9b0208a34d5607fa33f5ab9edd1762773eddadabd340415dc452"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.7/git_sv-v0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "894c535438e0dfa2b863ea3352d7dc05c093b0f196c707c5d0d6ada25b76a1ef"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.7/git_sv-v0.3.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4ffeb5c18cd8a8faaac3a84fda0485a2999d65a4482590ede30c4ca941adcdde"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
