class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.7"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.7/ssoca-client-0.15.1-dev.7-darwin-amd64"
    sha256 "0fec8bb2df618a48e2a3e0268675f79230564edfcc0a0fcd1722b8c15bb58f8a"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.7/ssoca-client-0.15.1-dev.7-linux-amd64"
    sha256 "700e772862f8006e32d8cabe8be40e721e641ccfb327057e7a0190f75c6e543c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
