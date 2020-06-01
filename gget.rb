class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.3.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.3.0/gget-0.3.0-darwin-amd64"
    sha256 "2b9d51dceff3483eeae927d01c944643c0185dae0f09b973eb24dfff8cd200a7"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.3.0/gget-0.3.0-linux-amd64"
    sha256 "80c7a1e0bb9c2cc3b10a49ca38ecbf66178d60df562be0c487a25a342b7e83d1"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
