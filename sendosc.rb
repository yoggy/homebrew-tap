class Sendosc < Formula
  desc "Simple command-line tool for sending OSC packet"
  homepage "https://github.com/yoggy/sendosc/"
  url "https://github.com/yoggy/sendosc/archive/v1.0.1.tar.gz"
  sha256 "91cbe48e60f133c56d31f909c281d83fee4cabb4af9cb5a927468087967f9e07"
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
