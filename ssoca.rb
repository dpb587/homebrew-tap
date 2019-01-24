class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.14.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.14.1/ssoca-client-0.14.1-darwin-amd64"
    sha256 "f0b0e1624f810f97c89aac2597f6b480bdddb0fc79ec2916100b85fa5a18fec3"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.14.1/ssoca-client-0.14.1-linux-amd64"
    sha256 "52634b8c3ffae2c27d2a31e02d6cb1a0dd61c4e8f49c7b9f765b45bf6351bd0c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
