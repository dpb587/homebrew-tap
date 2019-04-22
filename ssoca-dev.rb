class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.14"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.14/ssoca-client-0.15.1-dev.14-darwin-amd64"
    sha256 "2ffcac6f0d8a9a1e7ecc04dbacc868365f43af3b89eabef90052d211b7a5b45c"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.14/ssoca-client-0.15.1-dev.14-linux-amd64"
    sha256 "403cbb9d56204e6fb55b30103e52775cb3ec419295db1f01e681db5dc2248e7f"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
