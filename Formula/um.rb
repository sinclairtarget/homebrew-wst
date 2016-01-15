class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/1.1.tar.gz"
  version "1.1"
  sha256 "4eb4018b4703abac7c859e52ed82c548d4c82398833015c46e1b8f90dff82029"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    prefix.install Dir.glob("*")
  end
end
