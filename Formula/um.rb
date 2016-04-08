class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "2903c2ff81c5b751f03ed4ad79f2c41a9f4eebc42759c000c4501b1d2289707a"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    prefix.install Dir.glob("*")
  end
end
