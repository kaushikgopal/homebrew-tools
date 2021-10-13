class RecursiveMono < Formula
  desc "Custom variant of the Monospace font - Recursive"
  homepage "https://github.com/kaushikgopal/recursive-code-config"
  url "https://github.com/kaushikgopal/recursive-code-config/archive/refs/tags/v2.1.079.tar.gz"
  sha256 "204949974670d99d2224edd075cf590ad1b920b4604c81350614b09ddc8a635a"
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
