#!/bin/bash

version=$1
metalink=$2

cat <<EOF
class Meta4 < Formula
  desc "For receipt files that contain digests, metadata, and source information about blobs."
  homepage "https://github.com/dpb587/metalink"
  version "$version"

  depends_on :arch => :x86_64

  if OS.mac?
    url "$( meta4 file-urls --metalink=$metalink --file=meta4-$version-darwin-amd64 )"
    sha256 "$( meta4 file-hash --metalink=$metalink --file=meta4-$version-darwin-amd64 sha-256 )"
  elsif OS.linux?
    url "$( meta4 file-urls --metalink=$metalink --file=meta4-$version-linux-amd64 )"
    sha256 "$( meta4 file-hash --metalink=$metalink --file=meta4-$version-linux-amd64 sha-256 )"
  end

  def install
    if OS.mac?
      os = "darwin"
    elsif OS.linux?
      os = "linux"
    end

    bin.install "meta4-#{version}-#{os}-amd64" => "meta4"
  end
end
EOF
