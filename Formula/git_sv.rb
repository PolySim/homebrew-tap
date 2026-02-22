class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.11/git_sv-v0.3.11-aarch64-apple-darwin.tar.gz"
      sha256 "7b42d0bfa1a4e9469ddb008e9db0b8df43e1f19ac4460a321318e7fcbb6b9c3e"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.11/git_sv-v0.3.11-x86_64-apple-darwin.tar.gz"
      sha256 "3919c88e5fa2f618a5b29915fb1753841f9aed90d0a9d086cc3ebefe4b28f381"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.11/git_sv-v0.3.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "660c64eb7f5e3869538cb7d0474f995f1915e150b06c88b0557f3f95e9b70057"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
