class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.10.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-darwin-amd64"
    sha256 "e3748ce783cb4357f84a22fc1350598cb05af62651f5b41d02cf846062ade115"
  elsif OS.linux?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-linux-amd64"
    sha256 "7590ca5fd325ccf502d67da027019f51a18de6a46a7e3bd3ebd2387da03ceca9"
  end

  def install
    if OS.mac?
      os = "darwin"
    elsif OS.linux?
      os = "linux"
    end

    bin.install "ssoca-client-#{version}-#{os}-amd64" => "ssoca"
  end

  test do
    system "#{bin}/ssoca version"
  end
end
