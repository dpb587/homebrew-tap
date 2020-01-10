class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.6"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.6/ssoca-client-0.18.2-dev.6-darwin-amd64"
    sha256 "f898fad4dd21c5ad985004205e6c51a324f107d8d25cabdf1b2f70124799852f"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.6/ssoca-client-0.18.2-dev.6-linux-amd64"
    sha256 "c758b8962dd8a0fa694d62d5cf667b42d586238ddfee545e65b12dca29903d6b"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
