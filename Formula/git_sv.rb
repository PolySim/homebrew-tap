class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.24/git_sv-v0.3.24-aarch64-apple-darwin.tar.gz"
      sha256 "08cf2eeeee99dc4f97b42047fe8d274d4d18368d574d6ecad4163b671a37367e"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.24/git_sv-v0.3.24-x86_64-apple-darwin.tar.gz"
      sha256 "ddf204706fd3fea36ec2a30c76ed696d179674333cd978ce5819ee48e0a3857d"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.24/git_sv-v0.3.24-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3aad7158584be1c0ddb72266856a0f258695d024c8f1d295e2391d99a46267e0"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
