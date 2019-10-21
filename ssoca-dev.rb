class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.18.1-dev.5"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.5/ssoca-client-0.18.1-dev.5-darwin-amd64"
    sha256 "3dae8bbf1e7a58aa57df72befc0d7c3109532bac898ee3794bbcf112c0bf41db"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.18.1-dev.5/ssoca-client-0.18.1-dev.5-linux-amd64"
    sha256 "ada9000bd1f32a95fd3796c9b6b33af7c7d53d0dc06e264b09b819744c03a145"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
