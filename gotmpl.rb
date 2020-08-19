class Gotmpl < Formula
  desc "A lightweight tool for rendering Go templates from the command line."
  homepage "https://github.com/dpb587/gotmpl"
  version "0.1.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/gotmpl/releases/download/v0.1.0/gotmpl-0.1.0-darwin-amd64"
    sha256 "3be2b14c2dace6beb9ff336a3bbc07e46457508fad7ae72f31297ed69840c819"
  elsif OS.linux?
    url "https://github.com/dpb587/gotmpl/releases/download/v0.1.0/gotmpl-0.1.0-linux-amd64"
    sha256 "b98b0ef9492215bec11d19b4be8db2ea8e5d24cd26703e26384c61881edc9cff"
  end

  def install
    bin.install Pathname.glob("*").first => "gotmpl"
  end

  test do
    system "#{bin}/gotmpl --version"
  end
end
