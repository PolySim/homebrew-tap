class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.1.2/git_sv-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "bbc0cecdb809711d880dc4d63c6176e458cc08a95170e57434a52cbd0616caab"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.1.2/git_sv-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "595073d0debabf4b3b2d5e839a2934eed4a521d18ef46072107da084e37be9b8"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.1.2/git_sv-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf632f0a2cfacb913b5fdaec37045874a0e354db43cd4072843f79b73bba25a8"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
