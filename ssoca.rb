class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.2/ssoca-client-0.19.2-darwin-amd64"
    sha256 "d1989a9ab588928ffb3d7721a5711ce99e83ab98d6e2b5c5dab114f102dee3ba"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.2/ssoca-client-0.19.2-linux-amd64"
    sha256 "ee6ee19b2aadc00b69b2db13f66555ebd33de7d3bced23ab97b42679732a9caf"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
