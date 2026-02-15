class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.1.1/git_sv-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9fa23a7a4fcbeb09a7dd0374a1dc508384ef85bfdbc713e0d4f0222a3bbfb8da"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.1.1/git_sv-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "367f8de2aa28b1884bdf10f25819cf6e15b499c9493dbc5dbd7a4cf605e4d9c0"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.1.1/git_sv-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7f9922c9e5cf6a5060070be9bdee549429a2aab52fec6558bd0342d2d7a01688"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
