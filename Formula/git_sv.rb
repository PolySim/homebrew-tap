class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.2/git_sv-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "e26e9b39b4d6ea4f87dc097e9a64dd10cd7e69ecc6314021efb986401a0f9586"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.5.2/git_sv-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "08e28db397dc73d536fb37851c5edab08426cfddf674efbce5138f0bd8c0ad33"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.5.2/git_sv-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "60815efd8e4655346a029166c6dfde5cc9596e0a6a38e0cc837c6cc68abc4263"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
