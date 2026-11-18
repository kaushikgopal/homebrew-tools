class Podsync < Formula
  desc "Align per-speaker podcast tracks and measure their drift"
  homepage "https://github.com/kaushikgopal/podsync"
  url "https://github.com/kaushikgopal/podsync/archive/b71b8459c5292512b84b2354bf6a4b5c16884f27.tar.gz"
  # The version names the pinned revision, so `fragmented doctor` can read it from the install path.
  version "0.1.0-b71b845"
  sha256 "cf8ab3b0fe06f025e175b9a4027860c8ab7b8f6ba0cd8afdf1a396a08eb5d50b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "scripts")
  end

  test do
    assert_match "Usage", shell_output("#{bin}/podsync --help")
  end
end
