class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.14"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.14/ssoca-client-0.16.1-dev.14-darwin-amd64"
    sha256 "0b73cc458408afbf498722b2c1896032f0fe9ec36ecb91820c25ff9be4dc189e"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.14/ssoca-client-0.16.1-dev.14-linux-amd64"
    sha256 "cca4a2c2020f0b6359d94d40c15c90f5c7bc154b8e4371d1cb33c4dab5fb3e96"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
