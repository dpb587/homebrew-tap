class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.0/ssoca-client-0.15.0-darwin-amd64"
    sha256 "46ae307bb035b3cc57acea76fdb08ecd882f14a411f2673d184a7304e255cd09"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.0/ssoca-client-0.15.0-linux-amd64"
    sha256 "2e47b008f916d6dcd2c3d4b4837a29a1436ee00fddc85fdfd84ffb8428be9b9c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
