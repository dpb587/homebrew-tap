class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.14.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.14.0/ssoca-client-0.14.0-darwin-amd64"
    sha256 "92908d1e044c58f11bdedcca002ac73054af9d7151937ca17900ea1ce5bbd0fa"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.14.0/ssoca-client-0.14.0-linux-amd64"
    sha256 "1ffc1cb53d68b33dfb76b075cbb335bf1f854cf072329e1a5258a19dcb336e69"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
