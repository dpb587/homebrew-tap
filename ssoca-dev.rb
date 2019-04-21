class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.12"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.12/ssoca-client-0.15.1-dev.12-darwin-amd64"
    sha256 "8ddcd45166c1074cdeca7906d7ea900c465453fa857a5c0c6aef0f9bcbd0623e"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.12/ssoca-client-0.15.1-dev.12-linux-amd64"
    sha256 "53b00466856db0f60e511192338e9b64c12cd335e5e96759994b5529d8d8ef79"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
