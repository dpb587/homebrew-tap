class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.17.1-dev.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.5/ssoca-client-0.17.1-dev.5-darwin-amd64"
    sha256 "960cb3723fc49118ad2862a17ca3b2cdeeae7b6a55fbf78a63c3f7907b57685e"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.5/ssoca-client-0.17.1-dev.5-linux-amd64"
    sha256 "8e813451c14343b6cc6bbd307b44717c9cc2b7525eba90a4c1f4badb9c787f97"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
