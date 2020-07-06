class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.5.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.5.2/gget-0.5.2-darwin-amd64"
    sha256 "2b5f150526e626c96897f89ea9f3e84f05e02ff52bde02c29280d6f199a65992"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.5.2/gget-0.5.2-linux-amd64"
    sha256 "c8758e0f25eec1ef53c0f120a67e248c76c1b25d044fe361f992b0cb777d9407"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
