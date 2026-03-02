class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.16/git_sv-v0.3.16-aarch64-apple-darwin.tar.gz"
      sha256 "c6ab4f500cc1f8aa78c9317641a895945397e12828235575e653d38e6bf0e88d"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.16/git_sv-v0.3.16-x86_64-apple-darwin.tar.gz"
      sha256 "740a1aecfcf8cd07b2c981d84111a40e17aeda4f45c5e3140ed414caf7669911"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.16/git_sv-v0.3.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e1abe520e008793a381f8b1fe22a0e1bbbfaa61c12b4a60b256e3fc690ff8c46"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
