class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.3/git_sv-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "9e04b63f0f0855b565ad8f3e8365f935ad1050972a0fa0565412e91ef25b58db"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.3/git_sv-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "6e38eb7aff5b2d857cfa4db03d07b21f713508b344fb4b7de98ab47f33ba7757"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.3/git_sv-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bd63e99afce39c18961fc3b0434e568fdf007e1aa204fba63624273fac723690"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
