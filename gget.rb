class Gget < Formula
  desc "A small utility for getting files from git repositories."
  homepage "https://github.com/dpb587/gget"
  version "0.5.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gget/releases/download/v0.5.0/gget-0.5.0-darwin-amd64"
    sha256 "33bbbd685f8dc20a36d763e9165c406281d8a1c61d06e30dc9c9f3edcc522153"
  elsif OS.linux?
    url "https://github.com/dpb587/gget/releases/download/v0.5.0/gget-0.5.0-linux-amd64"
    sha256 "999213d32c20c44214a3160a23d521f63379e52cbd9379a8c081df9720678a3d"
  end

  def install
    bin.install Pathname.glob("*").first => "gget"
  end

  test do
    system "#{bin}/gget --version"
  end
end
