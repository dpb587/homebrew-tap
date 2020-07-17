class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.1/ssoca-client-0.19.3-dev.1-darwin-amd64"
    sha256 "22ed61bf540f04b251e843d06ebd8929324445a04b7da71794612958137f8236"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.1/ssoca-client-0.19.3-dev.1-linux-amd64"
    sha256 "71c978d9887abaa582638d81b9a89ceece36a73ddf4da5d17c773eaaf360539c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
