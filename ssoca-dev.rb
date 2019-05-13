class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.4"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.4/ssoca-client-0.16.1-dev.4-darwin-amd64"
    sha256 "d8528dbd796c5b11afb5db2db721442fb969281f8a166ce045bed9f9fd33326a"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.4/ssoca-client-0.16.1-dev.4-linux-amd64"
    sha256 "19fb967bfffbe6db20a82ec2f6a295f9eb3caf64e046dc7cab1590cebb231f68"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
