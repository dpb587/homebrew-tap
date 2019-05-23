class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.6"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.6/ssoca-client-0.16.1-dev.6-darwin-amd64"
    sha256 "1fd85ee77ccc3b6a302cabb3568302110ad86fe3c277d8c0d755e631cbf9cc3b"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.6/ssoca-client-0.16.1-dev.6-linux-amd64"
    sha256 "82649290b84e597147a5e12476e163c3062b0fed92b3cb057388ddbf4b3c525c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
