class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.1-dev.3"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.3/ssoca-client-0.18.1-dev.3-darwin-amd64"
    sha256 "bf70260c8044179f2fc8206dd63b381da3b57d225177330f0f55dfb35bbb45b1"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.3/ssoca-client-0.18.1-dev.3-linux-amd64"
    sha256 "71e1691725018c8617f6935fc598b46d103ed0f5894af53a554c34c71193b459"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
