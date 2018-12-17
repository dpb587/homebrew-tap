class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.12.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.12.0/271a893e365d0393020d30bd7c11d76cc154def7"
    sha256 "4a6a70cb73043b66e02e1d001f7b2f67b0176693818a3f0e0f59dc383444aca1"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.12.0/efd654ca86649044771fe64347f62c6726abd68b"
    sha256 "285d1a6707ba74211cbc4766fefad6cbf7291c9bfc6324e96f6da7c47df2ff01"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
