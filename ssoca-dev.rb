class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.1-dev.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.1/ssoca-client-0.18.1-dev.1-darwin-amd64"
    sha256 "fa7f40e75af2f9aef1a5e0883b68941f693a47769ef487185e5bc14c33b7c915"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.1/ssoca-client-0.18.1-dev.1-linux-amd64"
    sha256 "2a0793ac603092b51bd732a541d44793494b2512421ea5dd82e6f06ab1cfe4a6"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
