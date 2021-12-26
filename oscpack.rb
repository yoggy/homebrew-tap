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

  patch :p0 do
    url "https://raw.githubusercontent.com/yoggy/homebrew-tap/master/oscpack-arm64.patch"
    sha256 "09e9178d1782f79cc33bf64c35f74755f290855a7489681f09fbcef464a5d70b"
  end

  test do
    system "false"
  end
end
