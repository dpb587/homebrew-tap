class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.11.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.11.0/e6c7f37cb854a1ca05bf7150075bc692474e8ed2"
    sha256 "64f070abd737e709e018f91f258d4b817632f66a7f34b4d941e60d79648d5be9"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.11.0/79eced49f1f14d9a4f407fd59f0e8d4316df9268"
    sha256 "a0f108f2f2d2577abd05799b3b7c1c6719e8358ddb06dc85b862aba77a7a9754"
  end

  def install
    if OS.mac?
      os = "darwin"
    elsif OS.linux?
      os = "linux"
    end

    bin.install "ssoca-client-#{version}-#{os}-amd64" => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
