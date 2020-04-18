class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.4"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.4/ssoca-client-0.19.1-dev.4-darwin-amd64"
    sha256 "fed2e8b725d923c38666b5f5bba345d929f7a221bbd29e71ea035cf83056b982"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.4/ssoca-client-0.19.1-dev.4-linux-amd64"
    sha256 "498a28662a008a05f78712cb011a1e980d6bca0aeb41bb2f3524dee39b313c27"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
