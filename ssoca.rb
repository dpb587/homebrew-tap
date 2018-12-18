class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.13.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.13.0/d15ebe235486fa42ca10d724fd32e9b55a335917"
    sha256 "fb5e2c9efcbc3e0a3eba40c8faa0719171a40df44c54dea84cce69a11124edcc"
  elsif OS.linux?
    url "https://s3-external-1.amazonaws.com/dpb587-ssoca-us-east-1/artifacts/v0.13.0/ab7b8de0878b8b70664748a01d1f4742c634944e"
    sha256 "dc7b1fd99932e1164c786a01c87707eccb5ff80dfdcc6c3f41eacafc06149a08"
  end

  def install
    bin.install Pathname.glob("*").first => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
