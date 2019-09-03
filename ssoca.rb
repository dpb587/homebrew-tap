class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.17.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.0/ssoca-client-0.17.0-darwin-amd64"
    sha256 "45a5519f31f124065ea0bdc884691b27002698b259fdde48e998e0c3c8078994"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.0/ssoca-client-0.17.0-linux-amd64"
    sha256 "d5ef81554920f08c89fa8a82ac8d0c86095470aa29912c035e758133e8e235f3"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
