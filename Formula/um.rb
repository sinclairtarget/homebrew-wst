class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/2.2.1.tar.gz"
  sha256 "451b9706465691513ca9e50fe9021f1d3a80ffb0a61bf34898a49c90ac88b1a5"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    bash_completion.install "um-completion.sh"

    prefix.install Dir.glob("*")
 
    File.write("#{share}/version.txt", version)
  end
end
