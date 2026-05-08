class GitSv < Formula
  desc "Visualize git graph in your terminal with a beautiful TUI"
  homepage "https://github.com/PolySim/git_sv"
  version "0.3.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.33/git_sv-v0.3.33-aarch64-apple-darwin.tar.gz"
      sha256 "a18b68f989f04dfc7115e3e8b551b9f537807e98ccd9839be5d1f8a103b43192"
    else
      url "https://github.com/PolySim/git_sv/releases/download/v0.3.33/git_sv-v0.3.33-x86_64-apple-darwin.tar.gz"
      sha256 "a325d93f9a6c19148ba333ed8d90f275cf1dc540cc0608bbf19915f4c2ab1e61"
    end
  end

  on_linux do
    url "https://github.com/PolySim/git_sv/releases/download/v0.3.33/git_sv-v0.3.33-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aef6569fa36b9b8e10ce033c2266bbacac7d880fe64e842fc794a7c2937adfbe"
  end

  def install
    bin.install "git_sv"
  end

  test do
    assert_match "git_sv", shell_output("#{bin}/git_sv --version")
  end
end
