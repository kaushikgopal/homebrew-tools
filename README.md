# Kaushik's Homebrew Tap

A homebrew tap for installing custom tools/fonts/binaries I use. This should make installing it on different computers easy.

# Developer instructions

Instructions courtesy:

* [Shinichi Okada](https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74)
* [sophyonline](http://sophyonline.com/blog/index.php/2018/03/19/create-a-local-formula-for-homebrew-tap-it/)

## packaging for homebrew - first time

```sh
brew create https://github.com/kaushikgopal/recursive-code-config/archive/refs/tags/v2.1.079.tar.gz
mv /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/recursive-code-config.rb ./
```

## packaging for homebrew - updates

```sh
# first build the font(s) and put them in a folder named "Recursive"

zip -r -X recursive-10.1.085.zip Recursive
# 10        internal version
# 1.079     Recursive version

shasum -a 256 recursive-10.1.085.zip | pbcopy

# push the latest branch of recursive-code-config up first
# create release in github (recursive-code-config repo)
# upload the .zip file
# update recursive-mono.rb file with new values (sha & url)
```

For IBM Plex Mono

```sh
# first build the font(s) and put them in a folder named "IBM-Plex-Mono-KG"

zip -r -X ibm-plex-mono-kg-2.6.30.zip IBM-Plex-Mono-KG
# 1        internal version
# 6.3.0    IBM Plex Mono version

shasum -a 256 recursive-10.1.085.zip | pbcopy

# create release in github (homebrew-tools repo)
# upload the .zip file
# update font-ibm-plex-mono-kg.rb file with new values (sha & url)
```

## debugging

```sh
# For formulas
# brew install -v --build-from-source recursive-mono.rb
```

# Installing

```sh
brew tap kaushikgopal/tools
brew install --cask font-recursive-kg
brew install --cask font-ibm-plex-mono-kg
```
