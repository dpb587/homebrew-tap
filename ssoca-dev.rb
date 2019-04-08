class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.8"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.8/ssoca-client-0.15.1-dev.8-darwin-amd64"
    sha256 "259c501984bbd759fe4d1a3394ae5aea4b872a229e1c0677516d2afde2e61e62"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.8/ssoca-client-0.15.1-dev.8-linux-amd64"
    sha256 "474a29127c72be5719fd113dd6241b7c97b865bf8f8639d61e34185864e19fe0"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
