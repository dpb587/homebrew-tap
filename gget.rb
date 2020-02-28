class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.1.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.2.0/gget-0.2.0-darwin-amd64"
    sha256 "2e81fbfb7d28f2a1186ada65ffe3ec4876f796889fc6c14889fb225286b72aa3"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.2.0/gget-0.2.0-linux-amd64"
    sha256 "cb2743613dc5d5e7ec82bfa276da011c365587d5383c3fd5132b863a98267638"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
