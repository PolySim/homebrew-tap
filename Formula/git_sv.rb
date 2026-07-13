class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.39/git_sv-v0.3.39-aarch64-apple-darwin.tar.gz"
      sha256 "8b4531da2f5d4a2c33be8e9c7b92df90ec98ac401847985baf66f6fc4fe0c6f1"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.39/git_sv-v0.3.39-x86_64-apple-darwin.tar.gz"
      sha256 "940c193063e39d7ff538af1bca364ab15f0335eb491d6c64e712159bb6eb04a8"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.39/git_sv-v0.3.39-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "60e0aea3b244e832ce17ab8fef12ac17f1f6c26a78ec5161def5ce2e587225c3"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
