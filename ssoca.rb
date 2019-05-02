class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.0/ssoca-client-0.16.0-darwin-amd64"
    sha256 "8d4e0deaa6cbc80c2793d4a1d579548b7fc3d981c7f0bb799f475b8e84ddfd14"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.0/ssoca-client-0.16.0-linux-amd64"
    sha256 "496b2d19f45d52985598e71257d757bfbf446012873900d68e2da60fd0f78750"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
