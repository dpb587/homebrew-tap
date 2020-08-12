class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.3"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.3/ssoca-client-0.19.3-dev.3-darwin-amd64"
    sha256 "efe405267b60b741e176f19277ad64200b39a3afcf3a303cf087b3d0cb65e353"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.3/ssoca-client-0.19.3-dev.3-linux-amd64"
    sha256 "e3f0a8755fa4020a666c186b9fa1e4b8a8b6dd4d97d603ee1319b11305ccc193"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
