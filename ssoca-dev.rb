class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.2-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.2-dev.1/ssoca-client-0.19.2-dev.1-darwin-amd64"
    sha256 "9414c5898c8778060c37ffb5a7e4ad539bae78f7457b193ca6f96c45ec7b0892"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.2-dev.1/ssoca-client-0.19.2-dev.1-linux-amd64"
    sha256 "34d75773e2254f273ee22a7d606ff4b3f1c2fe9454707f170671e09b3171f547"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
