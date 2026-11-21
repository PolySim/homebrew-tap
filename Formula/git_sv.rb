class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.6.0/git_sv-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "a19d76ad076b3a1b1e078f84269be2ce6e25f4e5f9d3d833e807a790e82c3156"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.6.0/git_sv-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c75fcee92a668cb5264dbd3282031727b52f7ebc5998be310c98b48dd6243b08"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.6.0/git_sv-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "40cf3b81ca4c7b5f39f20791a941e7577c20f8018cc3d3274cfdb701fc164167"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
