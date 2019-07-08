class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.12"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.12/ssoca-client-0.16.1-dev.12-darwin-amd64"
    sha256 "89e3c98b350cc9dec3bdf054ac3c34312a435da07411149c58efe82a37eae2fb"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.12/ssoca-client-0.16.1-dev.12-linux-amd64"
    sha256 "b2a4360b006f156470c5dc6f959852e07d66913daeaf8cc9d85fc9e8047ebdc3"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
