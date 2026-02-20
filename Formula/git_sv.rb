class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.4/git_sv-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "7e3b143d314f62c0d6deb30d05e421b8fb7231d632b5f75d72cb9f481c409ca9"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.4/git_sv-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "3507095e9c9c92636cd1964a6367fab81c6bb11018582b85cf535c29e2a5c442"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.4/git_sv-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "301b29a300a6fce8114ac0b6846b8c81b81f0fd99e975a6c00b27466f0487e08"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
