class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.10"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.10/ssoca-client-0.19.3-dev.10-darwin-amd64"
    sha256 "59deab98448664dcc6f6b97db6b55f11caccb718e87979c71deaf8e1ce17366b"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.10/ssoca-client-0.19.3-dev.10-linux-amd64"
    sha256 "1f31425b4c2aacc2e60562877ba6731b8f696ce74408c1a813eeab5432f64519"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
