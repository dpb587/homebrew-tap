class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.8"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.8/ssoca-client-0.18.2-dev.8-darwin-amd64"
    sha256 "3fc8763c08f0add7d6344ce0361852641b3d43ccd6ef81e84059d376c1360ee4"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.8/ssoca-client-0.18.2-dev.8-linux-amd64"
    sha256 "aee0e6549dad2d04d7c6c3489337ad61067aba33450a4f59bcd4840f25acb4dd"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
