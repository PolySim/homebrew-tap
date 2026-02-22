class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.8/git_sv-v0.3.8-aarch64-apple-darwin.tar.gz"
      sha256 "272124d04a89c2f8e6e23abfc418e8e98df05388516a3b033b87f964b241a431"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.8/git_sv-v0.3.8-x86_64-apple-darwin.tar.gz"
      sha256 "cdbdd1576da31b451db253ab4393e58eeaef468b6a9abaa3de4c394ba72677ba"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.8/git_sv-v0.3.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5837b5065ccf7a710b46bf44f85488b876844193c029d080de6d840700c68ba1"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
