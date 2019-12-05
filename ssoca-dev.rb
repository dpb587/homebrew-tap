class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.2-dev.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.2/ssoca-client-0.18.2-dev.2-darwin-amd64"
    sha256 "b7695724b3c7cb038ea5c8e05056f43f5996298fc1276f237bcc01f7ba0d7b03"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.2-dev.2/ssoca-client-0.18.2-dev.2-linux-amd64"
    sha256 "7529acc8943bf5d76c2c18d89dd4bf1eb208fb45c4b2e78c75afb1b3a70a451c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
