class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.3"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.3/ssoca-client-0.18.2-dev.3-darwin-amd64"
    sha256 "f12cfc85b80f0def7a395fc9b11c7c73f1abc98da6f63c5cec34fa0815db30b9"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.3/ssoca-client-0.18.2-dev.3-linux-amd64"
    sha256 "90a0e75103337fb7155858b494537fdf980f072266d81f04bcd3ab1c0219573d"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
