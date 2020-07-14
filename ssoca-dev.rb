class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.8"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.8/ssoca-client-0.19.1-dev.8-darwin-amd64"
    sha256 "46d98cae14c4c5a2ba383653364928f65636487aba0722e2155b7b1f7416e8f5"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.8/ssoca-client-0.19.1-dev.8-linux-amd64"
    sha256 "339ccc759685fcbf963ed2de08b70b87e4ac7c411d13d5f76208072e47862f16"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
