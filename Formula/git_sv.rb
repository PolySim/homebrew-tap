class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.22/git_sv-v0.3.22-aarch64-apple-darwin.tar.gz"
      sha256 "159164e0bcdfa7d79c656fbb948745622841a5c2d47681eff926ee15e88175f8"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.22/git_sv-v0.3.22-x86_64-apple-darwin.tar.gz"
      sha256 "5a8e7b58723c7aef7336b268f870f32ecc7cd81ad958dc411434172ffc39e9f0"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.22/git_sv-v0.3.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "548c5d4a93e7106a4fbba2ce29bedfec6be2e47bcb361990629781eef649efbf"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
