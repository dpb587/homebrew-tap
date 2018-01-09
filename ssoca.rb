class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "0.8.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-darwin-amd64"
    sha256 "f83c50e2f1d4edeefe258ceac2c0c59a6b2f8dbcea95313d0442013911be8cc1"
  elsif OS.linux?
    url "https://github.com/dpb587/ssoca/releases/download/v#{version}/ssoca-client-#{version}-linux-amd64"
    sha256 "eeffed6bd82b95091eb4103f96fe802d691662f58a4649221fb48452c11bb0c6"
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
