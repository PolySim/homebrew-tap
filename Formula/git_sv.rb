class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.18/git_sv-v0.3.18-aarch64-apple-darwin.tar.gz"
      sha256 "539b4c56231c955009fab621e222a2e5e73a936c0c7301aebbb0ce60514510e9"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.18/git_sv-v0.3.18-x86_64-apple-darwin.tar.gz"
      sha256 "2e6e3a59612a733a2c8f49e835b7872972f304cd21b020744640a98400489822"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.18/git_sv-v0.3.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d8c86bf7bc5604c87d075759ea1b3d990be492abef6eebee747a2fca897066a4"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
