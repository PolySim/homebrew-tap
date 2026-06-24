class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.36/git_sv-v0.3.36-aarch64-apple-darwin.tar.gz"
      sha256 "6afa8effc1ab39cf849061249ef3926d0dfef782e7ec92fbdca1ffbc19cca84e"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.36/git_sv-v0.3.36-x86_64-apple-darwin.tar.gz"
      sha256 "a11ef20c2cd8674d6ea5d817854ee44e213e7f2b37586d6907237436573a41ed"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.36/git_sv-v0.3.36-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "928def4ab8e95d14617ed31891dd32bb2bcb4787fa0553d8813b5ba8fd4d0f8d"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
