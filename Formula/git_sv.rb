class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.0/git_sv-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "364b2e24473f4907bc40752eade23d42ac2738c4c9955b0d8e591b4457c02e37"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.0/git_sv-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "6a96e793270a41a2992ad7918d2326fd52caa5675ff4678706b8f5c4478a664f"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.0/git_sv-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54ee3c8765908037ca0a81acb187752e9bae2533f3b4edb8d6ce9e4a00bc59e5"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
