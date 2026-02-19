class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.3/git_sv-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "c26f4b4328e80214ecb80f6f854976139f093c46c90600a4edea5a6f10fc5f30"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.3/git_sv-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "500aba7911bb9148c346738312939b052536bcf37f69b3b68881cd52f420edd2"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.3/git_sv-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "605032ac472cf49ae0424b838724d368b7592dbefdca1de7fafe2cea20cedcd4"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
