class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.17.1-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.1/ssoca-client-0.17.1-dev.1-darwin-amd64"
    sha256 "2c35931c00672f1a15a239327b7188a4e52459e7d043ccc661470ed80b49c75e"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.17.1-dev.1/ssoca-client-0.17.1-dev.1-linux-amd64"
    sha256 "0c17599bf726e4a343c39898b9fbffbf91ff9efe331a2a1c88d8b3d2bc509083"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
