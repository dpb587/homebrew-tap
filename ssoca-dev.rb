class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.6"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.6/ssoca-client-0.19.1-dev.6-darwin-amd64"
    sha256 "a31aa2a03fed2903932bc3fbd0ed5f23d84bd53bf51dbda4056617212e777519"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.6/ssoca-client-0.19.1-dev.6-linux-amd64"
    sha256 "a34454b510cf81f29f9383438f72832e34203718dd41ad4db3d0746fd68507ac"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
