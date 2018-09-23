#!/bin/bash

version=$1
metalink=$2

cat <<EOF
class Ssoca < Formula
  desc "Client for SSO for services that use CA-based authentication."
  homepage "https://github.com/dpb587/ssoca"
  version "$version"

  depends_on :arch => :x86_64

  if OS.mac?
    url "$( meta4 file-urls --metalink=$metalink --file=ssoca-client-$version-darwin-amd64 )"
    sha256 "$( meta4 file-hash --metalink=$metalink --file=ssoca-client-$version-darwin-amd64 sha-256 )"
  elsif OS.linux?
    url "$( meta4 file-urls --metalink=$metalink --file=ssoca-client-$version-linux-amd64 )"
    sha256 "$( meta4 file-hash --metalink=$metalink --file=ssoca-client-$version-linux-amd64 sha-256 )"
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
EOF
