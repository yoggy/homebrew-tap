class Oscpack < Formula
  desc "Simple C++ OSC packet manipulation library | Ross Bencina"
  homepage "http://www.rossbencina.com/code/oscpack"
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/oscpack/oscpack_1_1_0.zip"
  sha256 "8389db649ed0a47b52bffe60aeec5157d192f59b4870d7487425d75032b05060"
  version "1.1.0"

  def install
    system "mkdir", "-p", "#{prefix}/lib"
    system "mkdir", "-p", "#{prefix}/include"
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
