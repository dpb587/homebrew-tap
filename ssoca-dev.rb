class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.8"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.8/ssoca-client-0.19.3-dev.8-darwin-amd64"
    sha256 "1ccdec9245d5560456e1619eecc973e1f160da122b8a47e2f49e3c9e2476bef5"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.8/ssoca-client-0.19.3-dev.8-linux-amd64"
    sha256 "097ff43e2ffe6e551c25daa6c0b5be60b8e54867f1cda9b419d5c1bebe432521"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
