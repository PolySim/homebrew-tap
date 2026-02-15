class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.2.2/git_sv-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "48ce9fa6b3fd133905c4d2afda6bfa9910d31d381d018af6f610d41d5ac7ecfd"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.2.2/git_sv-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "8a58bb5ffaaf0749942598e3098bd453aa7ce8f3c9e86e2d738d7cab858f314b"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.2.2/git_sv-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "abb85ff3e26654705dc044cab7691247638d57ed921a11da376f9e3ac8284e97"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
