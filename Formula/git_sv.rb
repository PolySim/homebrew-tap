class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.5/git_sv-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "7320610c309e0f41053de47cbc30f3f8cd5c637fd07cf06a287534c15185e10d"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.5/git_sv-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "5fca47f2ba20b5bfaf53012b73929e31648fff0a5d0ee773a9846177e3c65422"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.5/git_sv-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "abb4cfcced379b60a3e6ff210561a94cff0e99ecc10facae97c18d7dcafc79f9"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
