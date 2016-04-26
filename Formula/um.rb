class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/2.1.0.tar.gz"
  sha256 "13e05594ce7a983ae5d12ba1b5b09e8887afe461ae163240cc0f81e474ca20eb"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    prefix.install Dir.glob("*")
    File.write("#{share}/version.txt", version)
  end
end
