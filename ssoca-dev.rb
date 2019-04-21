class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.13"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.13/ssoca-client-0.15.1-dev.13-darwin-amd64"
    sha256 "a8684577074be68585220354438e47d352411a698da0aa321b35f85aab146867"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.13/ssoca-client-0.15.1-dev.13-linux-amd64"
    sha256 "0d872cddd24fe1f9392352e4ba84fa07a5cef9ecf8196292b66690693091eb2b"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
