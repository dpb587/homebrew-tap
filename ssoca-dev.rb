class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.10"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.10/ssoca-client-0.16.1-dev.10-darwin-amd64"
    sha256 "30c511845f479748019397f5848fa0cccbd7c5125a85b6408d5d8894bda87b75"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.10/ssoca-client-0.16.1-dev.10-linux-amd64"
    sha256 "1ce184f4e0a493b119407d14aac388191505a68838ad55a036432894a39a5491"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
