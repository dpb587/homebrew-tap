class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.1.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.1.0/gget-0.1.0-darwin-amd64"
    sha256 "18ce2726f7b9183ef90ea2a4074554549a9dab4f1e009231711a03ba8e6d0286"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.1.0/gget-0.1.0-linux-amd64"
    sha256 "418b68caeb302898322465abc31c316a1dbdb7872cdad0fe4a9661c5118860c4"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
