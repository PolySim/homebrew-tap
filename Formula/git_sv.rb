class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.0/git_sv-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c5c22d67f8a4381208d3068b897510967488297587c528dca0dd821445447ad5"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.0/git_sv-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "4fe83a2e05beb23e35db5859719fb83b82eb8b1f4b0a6d7ce40e6f832511f2ee"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.0/git_sv-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cd92afb439456b7366bd48acef99c4ee997421b8ef6686af19e003d7f45c4b2e"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
