class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.3-dev.6"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.6/ssoca-client-0.19.3-dev.6-darwin-amd64"
    sha256 "2e7ce72a65489c3708057693592dbaf121ba45acb5a950b4c4b20a7c70557032"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.3-dev.6/ssoca-client-0.19.3-dev.6-linux-amd64"
    sha256 "7423a808ff0b264504eccc8479c8fedf43e8f01a458cd8244d7bfeb44f764873"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
