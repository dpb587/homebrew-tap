class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.17.1-dev.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.2/ssoca-client-0.17.1-dev.2-darwin-amd64"
    sha256 "ce8d4e31de2edad970c004600cdb5f453ff7f314afed5e41bc9933cfd07746cb"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.2/ssoca-client-0.17.1-dev.2-linux-amd64"
    sha256 "4a87e89cb797393f9d2d42d508d0f0b0f2f1faef43f27cf3ac98ca7df18a0bb0"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
