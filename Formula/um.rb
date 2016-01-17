class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "5bba0146941de567ebaa639258ffb4ac6bd40a11f1bc7b3e395798352c6b3268"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    prefix.install Dir.glob("*")
  end
end
