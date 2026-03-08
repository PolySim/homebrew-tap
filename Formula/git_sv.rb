class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.20/git_sv-v0.3.20-aarch64-apple-darwin.tar.gz"
      sha256 "ff679a2f6e7cfc5a98e6d214bab7c6bfa28fe944502dc50e6997711923247211"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.20/git_sv-v0.3.20-x86_64-apple-darwin.tar.gz"
      sha256 "9730eaeb05ba6a8b7cf54fca9d8d4c62ee2ee248469de8b994105f9cac3f95b3"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.20/git_sv-v0.3.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "84e113e9336890f506a4184805416f81db176b033c99ec0c0c287fe7636515e8"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
