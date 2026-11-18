class DeepFilter < Formula
  desc "DeepFilterNet3 speech denoiser for 48 kHz audio, as one prebuilt binary"
  homepage "https://github.com/Rikorose/DeepFilterNet"
  version "0.5.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/Rikorose/DeepFilterNet/releases/download/v0.5.6/deep-filter-0.5.6-aarch64-apple-darwin"
    sha256 "4601e7f4e4c03e59a4c5b5000216ef3add3e808799cfccd95e14e83ea4611081"
  end

  on_intel do
    url "https://github.com/Rikorose/DeepFilterNet/releases/download/v0.5.6/deep-filter-0.5.6-x86_64-apple-darwin"
    sha256 "d3be84003acb7c23e738ad7f70a158ec779a8d233a82e7fa3e717d112eb5b50f"
  end

  depends_on :macos

  def install
    bin.install Dir["deep-filter-*"].first => "deep-filter"
  end

  test do
    assert_match "deep_filter #{version}", shell_output("#{bin}/deep-filter --version")
  end
end
