class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.5/ssoca-client-0.19.1-dev.5-darwin-amd64"
    sha256 "fe47cb3ce9503a47d42b3d8f014d182c73ae384cbf00f3a23db1e368f7d2a258"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.5/ssoca-client-0.19.1-dev.5-linux-amd64"
    sha256 "f4a0d37a0540c10f6714ace0f1f2e03bbe6b812919b3abe1c3fd1c1eae3019e5"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
