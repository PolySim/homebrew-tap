class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.29/git_sv-v0.3.29-aarch64-apple-darwin.tar.gz"
      sha256 "05000dd8f9fe7f415843ef35708b43f733ffb5141af30e26b15fdf96ae53ebec"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.29/git_sv-v0.3.29-x86_64-apple-darwin.tar.gz"
      sha256 "808c1894eabae25dc78c1f4ec7f51cc190b8186f7c3f54609bea8143e82f5c78"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.29/git_sv-v0.3.29-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "835b7613a10567d0b2946d82d91c236e78088e3d69d432d1e2a00d42204c9104"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
