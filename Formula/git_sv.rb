class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.14/git_sv-v0.3.14-aarch64-apple-darwin.tar.gz"
      sha256 "733ccf277372cb11adeb258f488c8533e56f4d7c7a5d1d3fffae34e4342a4259"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.14/git_sv-v0.3.14-x86_64-apple-darwin.tar.gz"
      sha256 "4af8ad47b99de037dd6bd11aba3c8425ce88ebe120fc20e984541628afedd119"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.14/git_sv-v0.3.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "523a7a3b98b3611bc665343649469dbc1821c35ad0e9b217a8abb4fb414465ae"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
