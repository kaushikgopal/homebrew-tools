class RecursiveMono < Formula
  desc "Custom variant of the Monospace font - Recursive"
  homepage "https://github.com/kaushikgopal/recursive-code-config"
  url "https://github.com/kaushikgopal/recursive-code-config/releases/download/v2.1.079/recursive-mono-2.1.079.tar.gz"
  sha256 "83ae0297563ee9d435ea14a6f32d091bf87042ace4652f4b7171f2bb71e947e4"
  license "MIT"

  def install
    (share/"fonts").install Dir["RecMono*.ttf"]
  end

  def caveats; <<~EOS
    ***************************************************
    Generated files:
      #{Dir[share + "fonts/RecMono*.ttf"].join("\n      ")}
    ***************************************************
    To install Recursive Mono:
      $ cp -f #{share}/fonts/RecMono*.ttf ~/Library/Fonts/
      $ fc-cache -vf
    ***************************************************
    EOS
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test recursive-code-config`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
