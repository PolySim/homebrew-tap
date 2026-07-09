class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.37/git_sv-v0.3.37-aarch64-apple-darwin.tar.gz"
      sha256 "771265759172c88342cca77b3b70d24a9723c25d7473042c296fd6ef82fda5dd"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.37/git_sv-v0.3.37-x86_64-apple-darwin.tar.gz"
      sha256 "97ce2f5da8577eca92bfa04d4957d5f547ff51e82289e9feae1cd6b11d32996f"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.37/git_sv-v0.3.37-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e52e79a0556389da516180c2c4f6da8e9498f7bed1d10be23eb91c7b1ace1ca5"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
