class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.1/gitin_0.1.1_darwin_amd64.tar.gz"
  sha256 "078a7ffdd2970d4e5b806f8f35c8698067b0fc7b8f4a7ba81d618df4c4e805fa"
  depends_on "libgit2"

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.1.1", shell_output("#{bin}/gitin --version", 2)
  end
end