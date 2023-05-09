class Meta4 < Formula
  desc "For receipt files that contain digests, metadata, and source information about blobs."
  homepage "https://github.com/dpb587/metalink"
  version "0.2.0"

  depends_on :arch => :x86_64

  if OS.mac?
    url "https://github.com/dpb587/metalink/releases/download/v0.2.0/meta4-0.2.0-darwin-amd64"
    sha256 "488e592a2570f7212b8206e59646e2bf0ff3fab72ccb91b80f73f66934f41dd2"
  elsif OS.linux?
    url "https://github.com/dpb587/metalink/releases/download/v0.2.0/meta4-0.2.0-linux-amd64"
    sha256 "81a592eaf647358563f296aced845ac60d9061a45b30b852d1c3f3674720fe19"
  end

  def install
    bin.install Pathname.glob("*").first => "meta4"
  end
end
