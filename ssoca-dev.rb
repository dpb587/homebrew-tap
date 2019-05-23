class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.7"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.7/ssoca-client-0.16.1-dev.7-darwin-amd64"
    sha256 "72ca47831b81fe3c904c13090c9f111ec8c1b7664f25e75dd38a2cd1ca973e7e"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.7/ssoca-client-0.16.1-dev.7-linux-amd64"
    sha256 "310bde3d63b79e2edee0ad7ce41ac57df3acee76f9b9a8f1e7e60b3ac183b31a"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
