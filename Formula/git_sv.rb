class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.21/git_sv-v0.3.21-aarch64-apple-darwin.tar.gz"
      sha256 "8df7017ce30abfeed3f4f1d11488606c70fdf2dc1fc0cb4a7f8cc81411309d0b"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.21/git_sv-v0.3.21-x86_64-apple-darwin.tar.gz"
      sha256 "d6e009dd7ac29a3ca65edaa0bda42c70bcd02d4367b66228ac6879e5776469e8"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.21/git_sv-v0.3.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "048e5dcddfda842159d95a6527decb7ed6e10f3a96dfb2c10267365babd9d43a"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
