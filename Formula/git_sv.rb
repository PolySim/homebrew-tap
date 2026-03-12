class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.23/git_sv-v0.3.23-aarch64-apple-darwin.tar.gz"
      sha256 "e5146b86f51cecae781a0cee105e72dd8d27eac87e7c8b3cf2725b1fc504f443"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.23/git_sv-v0.3.23-x86_64-apple-darwin.tar.gz"
      sha256 "dfcdabc084826780b70847591b221839b61fcd6b928bde156e386c862655c5ec"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.23/git_sv-v0.3.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b70a492dd045140acc1d8703befde895d0fb064294b7d35fd84a323b85a709c"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
