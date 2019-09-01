class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.15"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.15/ssoca-client-0.16.1-dev.15-darwin-amd64"
    sha256 "04d62d4ffcbb196a05f02cffb26429e01451f44252c6bc3a53b150831292f4a0"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.15/ssoca-client-0.16.1-dev.15-linux-amd64"
    sha256 "3e10cecb41b6e78c0a307c980673bf64d7157de07362abd5a893af59451c3ed8"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
