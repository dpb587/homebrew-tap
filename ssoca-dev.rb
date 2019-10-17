class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.1-dev.4"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.4/ssoca-client-0.18.1-dev.4-darwin-amd64"
    sha256 "a2a61b707c191347a02cb8513b69737fec25d06167825dc2ebee998ff2741029"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.4/ssoca-client-0.18.1-dev.4-linux-amd64"
    sha256 "012a68251ba8f0cf7fd8bdc526a1a9d2e9dc97f42c0a395dc222bdd5b560d26c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
