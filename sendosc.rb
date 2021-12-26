class Sendosc < Formula
  desc "Simple command-line tool for sending OSC packet"
  homepage "https://github.com/yoggy/sendosc/"
  url "https://github.com/yoggy/sendosc/archive/v1.0.3.tar.gz"
  sha256 "c0dee7bc6baae0ac0dc5417e8ab6379911fcc23a198fdd9b10bd861deedfbfe9"
  depends_on "cmake" => :build
  depends_on "yoggy/tap/oscpack"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
