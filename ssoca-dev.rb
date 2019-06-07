class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.8"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.8/ssoca-client-0.16.1-dev.8-darwin-amd64"
    sha256 "cd8dd349697d3b5689a61b9596ff4ea728fbb5745de6c440d7b6a6018685833e"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.8/ssoca-client-0.16.1-dev.8-linux-amd64"
    sha256 "9ab3839eddb6af17c59b50905736ec1ca5b7c049e32585ea973bccd5cfecc853"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
