class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1/ssoca-client-0.19.1-darwin-amd64"
    sha256 "c95526e014277d519335dc394070137150664d12eb259f10aacedb432fa5d3bc"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1/ssoca-client-0.19.1-linux-amd64"
    sha256 "40d5a7cd6b248dbaa11e764541943a9ebd77a43eca583b0dd4fcadecc55b7791"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
