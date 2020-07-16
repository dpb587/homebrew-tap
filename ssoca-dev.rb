class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.9"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.9/ssoca-client-0.19.1-dev.9-darwin-amd64"
    sha256 "66908456f85d7066b25c9d199b760a79a3f428ff825638be6b13ccdc08220035"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.9/ssoca-client-0.19.1-dev.9-linux-amd64"
    sha256 "8fc9ec4df2e0c7c7601b5335d4a6cb2d4a555ec8a713339e9bf4749d9b647e7c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
