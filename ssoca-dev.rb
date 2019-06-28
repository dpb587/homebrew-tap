class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.11"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.11/ssoca-client-0.16.1-dev.11-darwin-amd64"
    sha256 "6b2d67f5093b1aca645cecb8e9de814a26069ff844879a9948a0a903bbca8fad"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.11/ssoca-client-0.16.1-dev.11-linux-amd64"
    sha256 "64cab39c5dee48278fb7e26587b3a846b007de02f944074b1dadc6f1071b018b"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
