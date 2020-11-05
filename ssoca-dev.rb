class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.7"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.7/ssoca-client-0.19.3-dev.7-darwin-amd64"
    sha256 "c9ceffee0205788073d0962638676f03d839572b4ea008b39222a641df522359"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.7/ssoca-client-0.19.3-dev.7-linux-amd64"
    sha256 "1ca662de33919c27958c9e69eef9cf66c9066ee33d02b9fcc74bbe04724a9571"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
