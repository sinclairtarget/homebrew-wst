class Um < Formula
  desc "Command-line utility for creating and maintaining personal man pages"
  homepage "https://github.com/sinclairtarget/um"
  url "https://github.com/sinclairtarget/um/archive/2.2.0.tar.gz"
  sha256 "da42676c172e2c53cae00936b1bcadcc82929ad1d95263eff2af4e2ec7b1add7"

  bottle :unneeded
  depends_on :ruby => "2.2.0"

  def install
    bash_completion.install "um-completion.sh"

    prefix.install Dir.glob("*")
 
    File.write("#{share}/version.txt", version)
  end
end
