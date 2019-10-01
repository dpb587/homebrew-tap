class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.0/ssoca-client-0.18.0-darwin-amd64"
    sha256 "a1a1da5c51470f3e873302b0a2b300d16fa4b740c3edcf681de138bebc1b18b8"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.0/ssoca-client-0.18.0-linux-amd64"
    sha256 "acf437da024465cceb0fe2ca4603a7bf333e1f5c2090763b71bcb45cfb653cb0"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
