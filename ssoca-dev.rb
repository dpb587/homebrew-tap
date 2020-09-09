class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.5/ssoca-client-0.19.3-dev.5-darwin-amd64"
    sha256 "f8b978681995c70aef48afb25df0b25d054a30308465b8bcb6c326f7b92f6257"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.5/ssoca-client-0.19.3-dev.5-linux-amd64"
    sha256 "8f948c9f64650dd9b14e1cc1cd226d0115260908d8063aa15feb936b46b5da2b"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
