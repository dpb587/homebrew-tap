class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.4.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.4.0/gget-0.4.0-darwin-amd64"
    sha256 "7cb9882d04a4c304db21a1f857fabc291e840d583405c86da202f4a7ba3539bf"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.4.0/gget-0.4.0-linux-amd64"
    sha256 "3f11558c84436b737b61b292683b07a6861a879d54b0d300d11d46edd6686cc0"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
