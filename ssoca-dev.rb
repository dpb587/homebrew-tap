class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.16.1-dev.13"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.13/ssoca-client-0.16.1-dev.13-darwin-amd64"
    sha256 "f66fc0619349b20e132a3670ca53f22e003fbd62e8aca3e9545f5beefe72d445"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.16.1-dev.13/ssoca-client-0.16.1-dev.13-linux-amd64"
    sha256 "ac8c9fe510575844a9626a8198af94f948a652b3009be2ff729b7a779cd9d995"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
