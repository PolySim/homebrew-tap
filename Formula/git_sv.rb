class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.30/git_sv-v0.3.30-aarch64-apple-darwin.tar.gz"
      sha256 "3a99cb7e938d5e39023779b155a7ce9281def897048d5d5b6d4b4036917d4031"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.30/git_sv-v0.3.30-x86_64-apple-darwin.tar.gz"
      sha256 "a8f913db0c5b86b7faf773cb32e8c5ede0bd4997aa79fe540dcada485e210265"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.30/git_sv-v0.3.30-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aeed4400869a2a0505300fef64e3c37ff24a273a8332b343d228881adb86669b"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
