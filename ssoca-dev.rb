class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.1/ssoca-client-0.19.1-dev.1-darwin-amd64"
    sha256 "155c5255f843abb707a525c9db2469618264e73ecf55019c0944fc30fe2c0aab"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.1/ssoca-client-0.19.1-dev.1-linux-amd64"
    sha256 "ffad6577f8d80ce935c60e9704e658b2849e71fc5167f17d730ec865fd47b87a"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
