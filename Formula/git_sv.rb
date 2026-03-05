class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.17/git_sv-v0.3.17-aarch64-apple-darwin.tar.gz"
      sha256 "053191a0c63d0708fc58f5072b29d3009fa9fafb8b0ec62f9a17cfe4502599b5"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.17/git_sv-v0.3.17-x86_64-apple-darwin.tar.gz"
      sha256 "dd86c8d0a20bfcb3294212c86ef5d090882e611949e74b072fcfeeee6a740b25"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.17/git_sv-v0.3.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dd92a99007f8f3f237a505f8feff9a4952f96aafa3159e97f03100fcb4fa07c1"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
