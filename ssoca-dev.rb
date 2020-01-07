class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.4"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.4/ssoca-client-0.18.2-dev.4-darwin-amd64"
    sha256 "393bcb6315135c9a820311954f2d187747309e9b71d2605ecda49be66768cc09"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.4/ssoca-client-0.18.2-dev.4-linux-amd64"
    sha256 "d9ea241e065bfa9acc75fa6ff4fbf1b7c63879537f3fefc4f584232b66a6c6f4"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
