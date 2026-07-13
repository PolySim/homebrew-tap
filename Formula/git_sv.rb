class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.4.0/git_sv-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "94dc65c061b417a69c594eac0aebf46cf56e040e7903dc8ed63b66b25db1908a"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.4.0/git_sv-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "3e64b1ada1c291a9280bf5d8c2757f4aff828f6cababdecc888285554eb54d08"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.4.0/git_sv-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "11d72cd1b847c4690360e8565d0318aa1bb799fc7f59a366d49713d5b0a63c81"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
