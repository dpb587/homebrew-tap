class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.2/ssoca-client-0.19.3-dev.2-darwin-amd64"
    sha256 "0632b67b8cc9d6d80ef64ce62991d578bf908a0c518ba2577998cf50f8e6cda7"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.2/ssoca-client-0.19.3-dev.2-linux-amd64"
    sha256 "60620d5b447b02fc2a7a02f57c0575bcab3a453087655941ef7d263632e5ca0d"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
