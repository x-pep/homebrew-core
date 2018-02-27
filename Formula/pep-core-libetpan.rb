class PepCoreLibetpan < Formula
  desc ""
  homepage ""
  version "0.1"
  #url "https://software.pep.foundation/enigmail/source/libetpan-0.1.tar.gz"
  url "file:///Users/claudio/pep/libetpan-0.1.tar.gz"

  sha256 "6a7d325821c928816c607a955953989be064378351c1bd280006e60dc883b298"

  # automake brings us aclocal
  depends_on 'automake' => :build
  depends_on 'autoconf' => :build
  depends_on 'libtool' => :build

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make"
    system "/usr/bin/install_name_tool",
               "-id", "@rpath/libetpan.17.dylib",
               "./src/.libs/libetpan.17.dylib"
    system "/usr/bin/install_name_tool",
               "-add_rpath", "@executable_path/../lib",
               "./src/.libs/libetpan.17.dylib"
    system "make", "install"
    # bin.install "dmidecode"
    # man8.install "man/dmidecode.8"
  end

  # test do
  #  system "#{bin}/dmidecode"
  # end

end

