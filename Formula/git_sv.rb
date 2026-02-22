class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.10/git_sv-v0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "7b9de51350de81c5368d81317c5663e97fe933583acc7c35f7c6e013ded8b0b5"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.10/git_sv-v0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "3beac2bfad44d523fa4249272ac0497ba209e423c9f9c8b40f64c41c61f8aa0b"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.10/git_sv-v0.3.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f946c60b1796a360d985cd402477d355c518a38943037581c0b2c4a316037ed"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
