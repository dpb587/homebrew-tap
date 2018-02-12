class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.9.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-darwin-amd64"
    sha256 "2e3d06027b9c7dc7ad0e28f1eff4ef634d354417e84cd8c0b3cff36eda39880a"
  elsif OS.linux?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-linux-amd64"
    sha256 "56bd161383c420724941eedaaaa5c7dcbf6f8bb72b94cabc477f2537d212184c"
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
