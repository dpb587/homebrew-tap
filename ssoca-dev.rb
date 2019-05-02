class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.1/ssoca-client-0.16.1-dev.1-darwin-amd64"
    sha256 "d7ab2f08cfc17fb431126020e21d8a62f5c3cae5071ccd44e60bbb327e92a8f2"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.1/ssoca-client-0.16.1-dev.1-linux-amd64"
    sha256 "f9c366cb59312ec508470d71b4b84a6908353380607f02cf9cc780ccaf1817bd"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
