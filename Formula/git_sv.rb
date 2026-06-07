class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.34/git_sv-v0.3.34-aarch64-apple-darwin.tar.gz"
      sha256 "3570110e6da538777fca66940ea9b330e1e4649ef778063a2c633a073221ea71"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.34/git_sv-v0.3.34-x86_64-apple-darwin.tar.gz"
      sha256 "619b2c9f69c500fc84136fb0b42fa23422da760e7033c43f1b9a8683014bfc7f"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.34/git_sv-v0.3.34-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b49fc2c12207b83916cc85c42119327b8393015ffa040fe4bd3a36243ac20030"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
