class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.9"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.9/ssoca-client-0.19.3-dev.9-darwin-amd64"
    sha256 "065d2975f1c2619f7441170ce9e0b13f1a5117c8a51574e4a50e0ce91c977f9b"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.9/ssoca-client-0.19.3-dev.9-linux-amd64"
    sha256 "deb16f2b7bf70d54a38fe07a917ab067fc0d466f512cc4d5cbbb83ad87a34aa2"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
