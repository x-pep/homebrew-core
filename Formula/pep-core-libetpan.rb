class PepCoreLibetpan < Formula
  desc "Mail Framework for C Language"
  homepage "http://www.etpan.org"
  version "1.6"

  url "https://github.com/fdik/libetpan/archive/cc4c5c5e3eb3d294fc58710d10821de4748b4df2.zip"
  sha256 "b18e631dd921e45576c601cddbe6d29d44f38cbabc03aaf1cc40d71b5306e6ca"

  depends_on 'automake' => :build
  depends_on 'autoconf' => :build
  depends_on 'libtool' => :build

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make"
    system "/usr/bin/install_name_tool", "-id", "@rpath/libetpan.17.dylib",
                                         "./src/.libs/libetpan.17.dylib"
    system "/usr/bin/install_name_tool", "-add_rpath",
                                         "@executable_path/../lib",
                                         "./src/.libs/libetpan.17.dylib"
    system "make", "install"
  end

end

