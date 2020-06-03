class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.7"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.7/ssoca-client-0.19.1-dev.7-darwin-amd64"
    sha256 "b1f318d0c6bbe66123f9058263781e69de5e541cefc2c89207bfae1941919145"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.7/ssoca-client-0.19.1-dev.7-linux-amd64"
    sha256 "c91906c2eba83e01662aa4cb619088874708bca23ff907f30a002f0fc7101fc5"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
