class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.7"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.7/ssoca-client-0.18.2-dev.7-darwin-amd64"
    sha256 "6fe3771c126541f7d19e8e17bbf022e06a7db46bcc5a42dd4347218584f36597"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.7/ssoca-client-0.18.2-dev.7-linux-amd64"
    sha256 "e2688ac2fa670206c090a2f1ef487700a070bfa5e97b18435cc86f104ba3eb86"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
