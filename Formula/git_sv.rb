class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.9/git_sv-v0.3.9-aarch64-apple-darwin.tar.gz"
      sha256 "6c82a74fa623a5c96abcb5066ea748f7de6c27735246c2b5480681bc0b4407eb"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.9/git_sv-v0.3.9-x86_64-apple-darwin.tar.gz"
      sha256 "d1c15eb5483011d3d142f292bbf634bb9d9a666ce367c2627f2371e623c474b6"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.9/git_sv-v0.3.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f4ee18c9acc9827a4b8385d9b13e48360dc8d0487265ed3fd18a4048262a4e0e"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
