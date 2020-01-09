class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.5/ssoca-client-0.18.2-dev.5-darwin-amd64"
    sha256 "bc21f9fe30dd91747155e2776c7798634c8bbc221b3ad64dff3cfa9178048d47"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.5/ssoca-client-0.18.2-dev.5-linux-amd64"
    sha256 "9374b50b42990cea3e0199ddbf29b27108ec856a56e15e79c7bb3ebee82cd3bb"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
