class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.35/git_sv-v0.3.35-aarch64-apple-darwin.tar.gz"
      sha256 "4f2fa31dde751d549bbd3af1c7310761a852e968b98a95965dc1052a1ae680cb"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.35/git_sv-v0.3.35-x86_64-apple-darwin.tar.gz"
      sha256 "2d641c05d1c5418e2556f96e160b9f7ed62be21e8d19b28559b6fd13221e0dd5"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.35/git_sv-v0.3.35-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c04f7074c5d592804f12509458e0b151be5072cc9f207c7bbfa1c7bde840a886"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
