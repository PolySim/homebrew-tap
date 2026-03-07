class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.19/git_sv-v0.3.19-aarch64-apple-darwin.tar.gz"
      sha256 "d9119c6585de8ce8111eb36147a3f9a611b71833db66b5cc8759d4051e6ca816"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.19/git_sv-v0.3.19-x86_64-apple-darwin.tar.gz"
      sha256 "635efcad5c4f0b7c4191c0c76afa9461a3db250c8939018003eb9e39599e95c1"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.19/git_sv-v0.3.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ac97b986b50a09a56c829d17fd31cb9155bd4c657de151df8b24989b1726e520"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
