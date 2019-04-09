class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.9"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.9/ssoca-client-0.15.1-dev.9-darwin-amd64"
    sha256 "5f3343a68b56ed9564d4f6b2f993d9c66a0a5addbe01ecd0c534faa2614f4768"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.9/ssoca-client-0.15.1-dev.9-linux-amd64"
    sha256 "66db42d8c74049c5ad3fffd73873e2e08e5c29fa9f8bf569d156933d0d407ca9"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
