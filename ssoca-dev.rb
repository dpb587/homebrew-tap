class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.1/ssoca-client-0.18.2-dev.1-darwin-amd64"
    sha256 "17b428896d9549c6b0a6677fd07d51c2c2ecacb5cf393fcad55f2dcbdeed4391"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.1/ssoca-client-0.18.2-dev.1-linux-amd64"
    sha256 "f8b0b88696e463f53def96178b7abad6d11bd2cd8966ead7e0d094dbe4904a7a"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
