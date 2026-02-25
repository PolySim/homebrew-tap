class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.12/git_sv-v0.3.12-aarch64-apple-darwin.tar.gz"
      sha256 "631ac23b21bde8d2675da8216ede8c4397f27145f2ced9c78d3e4d88751ec8a2"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.12/git_sv-v0.3.12-x86_64-apple-darwin.tar.gz"
      sha256 "55702eb780e31d71dd43e6ff4ad2097b45e5234ca1661da676d943acc9100cae"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.12/git_sv-v0.3.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d3d0364d7c09caf5f0e699ab0a13cf5f5b3fc05eed5a5194344af6812f2ed000"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
