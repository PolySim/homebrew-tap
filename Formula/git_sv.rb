class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.5/git_sv-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "cf4d9b7bc6d568429b513365343cefb9971fbe2af774b25819cc1abd571e9396"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.5/git_sv-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "31361e0306e51dd810c984433e2ec52df057233fc49b9765b1db1630d7e6de2a"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.5/git_sv-v0.5.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "25be4ed389aedcbdeed446bdbb62a788f296ec5bace9ecb2ab5e1993b15b1d60"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
