class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.7.1"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-darwin-amd64"
    sha256 "6393442bd9002f0a89ef5dc81ae6936f84e248d0dea02a3098b26693b9dde78c"
  elsif OS.linux?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-linux-amd64"
    sha256 "adbb82453de3bc7e4cf66baf533089ee8f8b1d3a3cec15825a0dd0c488c08fc8"
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
