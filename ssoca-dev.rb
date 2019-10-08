class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.1-dev.2"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.2/ssoca-client-0.18.1-dev.2-darwin-amd64"
    sha256 "07edd4acdb6b32679e80da08ef90b5d911fd0ff5491edd706b12c580e57b1f2a"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.2/ssoca-client-0.18.1-dev.2-linux-amd64"
    sha256 "07dabb148e6cf177983d69ec0f5302ef41c0fdcb605684eb10961c302f5fe77e"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
