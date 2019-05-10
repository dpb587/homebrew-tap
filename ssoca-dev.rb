class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.3"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.3/ssoca-client-0.16.1-dev.3-darwin-amd64"
    sha256 "7b1d5776ca999abd2c88732f47494ab5ea87a285a1d35d2d8833975af7a09513"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.3/ssoca-client-0.16.1-dev.3-linux-amd64"
    sha256 "3042d4b9f10ea00f17e4ca62a50246d5e12e8439e01a402adea17913c7d45500"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
