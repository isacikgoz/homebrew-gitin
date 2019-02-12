class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.4/gitin_0.1.4_darwin_amd64.tar.gz"
  version "0.1.4"
  sha256 "60c77c9d4dbef786cfa6d75871f0dd9b3a54a5a94d6cb79430b5e8866e5e0b88"
  depends_on "libgit2"

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.1.4", shell_output("#{bin}/gitin --version", 2)
  end
end