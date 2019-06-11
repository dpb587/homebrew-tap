class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.9"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.9/ssoca-client-0.16.1-dev.9-darwin-amd64"
    sha256 "cbf8aedf2d56a178c55a8df0e410ab9635e0e170ebf88f3869c9ba43e354db48"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.9/ssoca-client-0.16.1-dev.9-linux-amd64"
    sha256 "7ce712fe71793db6088626f9719a5e7876cdd289f545a8eb7eaa0a695b6c7019"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
