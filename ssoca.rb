class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.19.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.0/ssoca-client-0.19.0-darwin-amd64"
    sha256 "f7ed10de1b474c5a4cb2d724f5e2408836cabdd48ef0e707f8abc7ffbe8efcb9"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.19.0/ssoca-client-0.19.0-linux-amd64"
    sha256 "cd5902e99a33cf43acca617c881ef3e1cd81eabce6608919d64e362638a80662"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
