class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.17.1-dev.4"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.4/ssoca-client-0.17.1-dev.4-darwin-amd64"
    sha256 "82e33e4a1ef92ee0658512c48c998eaa8f0d62289651dfda3c4d7216435148e4"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.4/ssoca-client-0.17.1-dev.4-linux-amd64"
    sha256 "ad68c0e20c7b86a9ff47714570a4bc12763c84f6467315898456e7fc4d084fec"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
