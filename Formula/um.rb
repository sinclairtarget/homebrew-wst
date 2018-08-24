class Um < Formula
  desc 'Command-line utility for creating and maintaining personal man pages'
  homepage 'https://github.com/sinclairtarget/um'
  url 'https://github.com/sinclairtarget/um/archive/3.1.0.tar.gz'
  sha256 '39c47102e1cf11c4b97367ac7456ed19e1114ef0e304eeef43cc8b3ac9ec8b12'

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
