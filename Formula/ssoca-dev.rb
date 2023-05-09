class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.12"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.12/ssoca-client-0.19.3-dev.12-darwin-amd64"
    sha256 "61fbc537a68726727fe9b8c0c6ee3f0cdf53a101c6f9046aca04d5f9854bcbc2"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.12/ssoca-client-0.19.3-dev.12-linux-amd64"
    sha256 "ed19c4ad10fe17cff68dde98701b9b65da62b5d7a1601fef675cd70fcff355f7"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
