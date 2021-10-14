#Kaushik's Homebrew Tap

A homebrew tap for installing custom tools/fonts/binaries I use. This should make installing it on different computers easy.

#Developer instructions

Instructions courtesy:

* [Shinichi Okada](https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74)
* [sophyonline](http://sophyonline.com/blog/index.php/2018/03/19/create-a-local-formula-for-homebrew-tap-it/)

## packaging for homebrew - first time

```
brew create https://github.com/kaushikgopal/recursive-code-config/archive/refs/tags/v2.1.079.tar.gz
mv /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/recursive-code-config.rb ./
```

## packaging for homebrew - updates

```
# first build the font
tar -czf recursive-mono-2.1.079.tar.gz RecMono*.ttf
# 2         internal version
# 1.079     Recursive version

shasum -a 256 recursive-mono-2.1.079.tar.gz | pbcopy

# create release in github (recursive-code-config repo)
# upload the .tar.gz file

# update recursive-mono.rb file with new values
```

## debugging

```
brew install -v --build-from-source recursive-mono.rb
```

#Installing

```
brew install kaushikgopal/tools/recursive-mono
```
