class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.5.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.5.5/gget-0.5.5-darwin-amd64"
    sha256 "e7260a27dc5042de351b0ec33e69db0202727735328ddbccfb1c3616d500bb0e"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.5.5/gget-0.5.5-linux-amd64"
    sha256 "8ad077cd54cf4b075e8578f85cdf2650ae2f86cb2a852efbd98c6cb6733e78d8"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
