class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.4/git_sv-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "a92e48d60f147a0d6038e46dff23be952774af08868b9d75f282888b7e754586"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.4/git_sv-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "f14e20ade3fbdab099396b9cb42a1c79e3fc60a8b5d1406b2d89f264f55ecce7"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.4/git_sv-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1f9fb5069caa247138f1746aebe093d99d0c1c69a759f5a79306729682b5a635"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
