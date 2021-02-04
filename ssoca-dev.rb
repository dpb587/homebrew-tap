class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.11"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.11/ssoca-client-0.19.3-dev.11-darwin-amd64"
    sha256 "90730d4209b9364295fbce9bfe8aa194c6bbda05f6af503a3e6b17ed5b4c5f83"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.11/ssoca-client-0.19.3-dev.11-linux-amd64"
    sha256 "8639c4defefaa2339a1209326559b3317108504c443684ba61a71db01e562357"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
