class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.17.1-dev.3"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.3/ssoca-client-0.17.1-dev.3-darwin-amd64"
    sha256 "5bfb0a81704962134aff45d475dfd00f471ba296e1ac7bab8182c89a26f7ac56"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.3/ssoca-client-0.17.1-dev.3-linux-amd64"
    sha256 "7d06a57569e9d9382dc592c050f087c8e183351fff292fa98c610cab42638a1a"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
