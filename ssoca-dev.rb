class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.1-dev.3"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.3/ssoca-client-0.19.1-dev.3-darwin-amd64"
    sha256 "d72ad79239c33b11d053eb2e33f32165620251e248edcb1b8293565c1acdeebd"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.1-dev.3/ssoca-client-0.19.1-dev.3-linux-amd64"
    sha256 "dad4501d093a8b37348897af7a846745ca68cd7d693d17af0c7d2b95b2cce9ea"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
