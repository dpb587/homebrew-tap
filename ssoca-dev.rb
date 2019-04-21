class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.11"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.11/ssoca-client-0.15.1-dev.11-darwin-amd64"
    sha256 "aefaf1b085ab93d4af5b76e384799222f15cb645d2bf86d6bbc75d9bf8ff7776"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.11/ssoca-client-0.15.1-dev.11-linux-amd64"
    sha256 "1c71f47dd957a928f46b7da8a6a34c8f4d778d538a8a042ad7575155e8484301"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
