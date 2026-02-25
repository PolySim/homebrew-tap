class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.15/git_sv-v0.3.15-aarch64-apple-darwin.tar.gz"
      sha256 "7a056eb8ba4b6698f2e240847e5f255d5985e31515b16bfb2e4b679716033193"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.15/git_sv-v0.3.15-x86_64-apple-darwin.tar.gz"
      sha256 "a3bfe1e39404c06d46bfc40c05f630ce258b125674e113e5506ff11c703d4783"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.15/git_sv-v0.3.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c4bf971e1ca2c590a3e23df3d39a1c9f39bf3e649fdfdeb9baf88c3b564990a7"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
