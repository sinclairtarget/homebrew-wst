class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/1.0.2.tar.gz"
  version "1.0.2"
  sha256 "2906a60bf26955b7181eb495bf3512086b241932a195a347ea3869d78b37f8ea"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    prefix.install Dir.glob("*")
  end
end
