class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.2/gitin_0.1.2_darwin_amd64.tar.gz"
  sha256 "52a0e77095382c1147b7149371ec6911a1370795ee6641e58454d0a1b28ece84"
  depends_on "libgit2"

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.1.2", shell_output("#{bin}/gitin --version", 2)
  end
end