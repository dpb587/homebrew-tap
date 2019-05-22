class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.5/ssoca-client-0.16.1-dev.5-darwin-amd64"
    sha256 "fd8168a8f0a34945bd00ec0e772c43266541ba633b9e68113338493fe1cdf3f3"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.5/ssoca-client-0.16.1-dev.5-linux-amd64"
    sha256 "f285b00184444368063e35cd29ca3ff5d02ecd65b89af9be67193922d46b9ddd"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
