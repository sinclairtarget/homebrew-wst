class Um < Formula
  desc 'Command-line utility for creating and maintaining personal man pages'
  homepage 'https://github.com/sinclairtarget/um'
  url 'https://github.com/sinclairtarget/um/archive/3.0.3.tar.gz'
  sha256 '467073c5cb187ca320b012d8e54920e7759d9b7622bf035699d86d6c71ec3bd6'

  bottle :unneeded
  depends_on 'ruby' => '2.2.0'
  depends_on 'pandoc'

  def install
    bash_completion.install 'um-completion.sh'
    man1.install Dir['doc/man1/*']

    prefix.install Dir['*']

    File.write("#{prefix}/version.txt", version)
  end
end
