class Timepolicy < Formula
  desc "Select entries that match policies based on time and metadata."
  homepage "https://github.com/dpb587/timepolicy"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dpb587/timepolicy/releases/download/0.1.0/timepolicy-0.1.0-darwin-amd64.zip"
    sha256 "62414f15b48eee7d25474169859279274df0d996ab2b03b6ec25f5008fbfa062"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dpb587/timepolicy/releases/download/0.1.0/timepolicy-0.1.0-darwin-arm64.zip"
    sha256 "c7415ddf3b87f1b8a0cd4c729b1b51f60297ae315407ae2bdd061cd7617153fd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dpb587/timepolicy/releases/download/0.1.0/timepolicy-0.1.0-linux-amd64.tar.gz"
    sha256 "eae42c5963e68c048fccbebcf09288fb8919ce9886aab15f1199a5144f79e5ff"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/dpb587/timepolicy/releases/download/0.1.0/timepolicy-0.1.0-linux-arm64.tar.gz"
    sha256 "242537888707333a38e6c14b7dfc9cac8b8b4abaedc6e7c5b8564b123ac1d6a5"
  else
    raise "unsupported runtime environment"
  end

  def install
    bin.install "timepolicy"
  end

  test do
    system "#{bin}/timepolicy --version"
  end
end
