class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.2/ssoca-client-0.19.1-dev.2-darwin-amd64"
    sha256 "eb066998d1aaea98d0896c8bd2d4b613bf8e3e59e3ad01866db34dc2bb723374"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.2/ssoca-client-0.19.1-dev.2-linux-amd64"
    sha256 "8eb086a9cdff10d0ad63cc933d1950a6e5ec4108e471363da9452fdf4a117540"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
