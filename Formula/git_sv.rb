class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.26/git_sv-v0.3.26-aarch64-apple-darwin.tar.gz"
      sha256 "7c7200cd08768ea27d75d045fa6ac8c3070e184e767a9a6a5ba1796fc61c5cda"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.26/git_sv-v0.3.26-x86_64-apple-darwin.tar.gz"
      sha256 "dd80fd56cbe8d07af29e9f2a088502ae3ca180d99de5d253053855f75eb13448"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.26/git_sv-v0.3.26-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2811dc63ab08857f4b0a25b4ac2ba8cd797be7c914e7b254e070a359cec8dd26"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
