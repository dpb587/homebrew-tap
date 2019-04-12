class SsocaDev < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.15.1-dev.10"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.10/ssoca-client-0.15.1-dev.10-darwin-amd64"
    sha256 "7fe8cf64c1d5cb4f6a4f93a53f6692b31d5f2d1701050b53e206c0ffae401779"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.15.1-dev.10/ssoca-client-0.15.1-dev.10-linux-amd64"
    sha256 "ccacfebe6ae004612da08e56596eb8073f02c429a3c207aefa650b0407f0364c"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
