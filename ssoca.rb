class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1/ssoca-client-0.18.1-darwin-amd64"
    sha256 "4ec0432ca5acf60334ad62a752c2a23de5d6e110fdcb324d5f8de7156b2316a0"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1/ssoca-client-0.18.1-linux-amd64"
    sha256 "379b1adcade7124cdbefa8d0e26337f33a3ec1e8e35ffb194a5c2ab3d94b5f3b"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
