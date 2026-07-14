class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.1/git_sv-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "862d8d42bf2ad52b0aa17e323aba4e83a910a77a8520707fdc2014ecbce1958c"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.1/git_sv-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "03cf497926b080763568333dd6d9e23a6962ca838b0d3d9823da75a74b455ed9"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.1/git_sv-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "79b48eaee975df5b83c48a6a64010f4d403c19f41e146bb77f9ceacc44f9ecfb"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
