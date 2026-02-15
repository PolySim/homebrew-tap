class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.2.0/git_sv-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c2208206618372b993ecdf4ab48ca63c35f829bf8ab6ab32e2c42560ca66f38b"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.2.0/git_sv-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e9a7f9d95ae70ff485f64e21c9f6c88c8dac31fab1f4ff922705b351427f256e"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.2.0/git_sv-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da5cf7407af0464a2c10fa67dfa86f1db294ca05f2656baada88a902a091244b"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
