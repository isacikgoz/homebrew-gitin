class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.3/gitin_0.1.3_darwin_amd64.tar.gz"
  sha256 "b8ca265f4db9560b6fced0f99efa66a232a930c7869ce39bc00a33af53714daa"
  depends_on "libgit2"

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.1.3", shell_output("#{bin}/gitin --version", 2)
  end
end