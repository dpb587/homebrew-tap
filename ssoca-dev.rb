class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.4"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.4/ssoca-client-0.19.3-dev.4-darwin-amd64"
    sha256 "c88a6228c8441fdd5c55c3dfda2b56ce25b9fd33ad5cf8b4ee9d237d9c8e5716"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.4/ssoca-client-0.19.3-dev.4-linux-amd64"
    sha256 "9f32a4d1608abcd0f9e6610c564a623db2bfc01552efd265d3e50cad17518a99"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
