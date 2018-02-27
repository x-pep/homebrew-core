class PepCoreYml2 < Formula
  desc ""
  homepage ""
  version "17"
  #url "https://software.pep.foundation/enigmail/source/libetpan-0.1.tar.gz"
  url "file:///Users/claudio/pep/yml2-17.tar.gz"

  sha256 "8a71b871959c64ad41571eb2d05a826894f50c4ba302856a0c9b2fa12c347102"

  def install 
      system "pwd"
      system "ls -l"
      system "python", "setup.py", "install"
  end

end

