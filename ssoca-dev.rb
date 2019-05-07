class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.2/ssoca-client-0.16.1-dev.2-darwin-amd64"
    sha256 "1647824c8e3c5e994541a7fe3813d65fbae91c244463bef0ea8798e55c08f2a8"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.2/ssoca-client-0.16.1-dev.2-linux-amd64"
    sha256 "3bbc5afac67eb90ce6cdb473d8121fb13f57348c0f969da1db396797a8a3dfb0"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
