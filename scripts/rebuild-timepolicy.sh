#!/bin/bash

set -euo pipefail
repodir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."

resources_path="$1"

function recipe {
  name="${1}"
  version="${2}"
  sha256sum="${3}"

  cat <<EOF
class ${name} < Formula
  desc "Select entries that match policies based on time and metadata."
  homepage "https://github.com/dpb587/timepolicy"
  version "${version}"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dpb587/timepolicy/releases/download/${version}/timepolicy-${version}-darwin-amd64.zip"
    sha256 "$( grep -e '-darwin-amd64.zip$' "${sha256sum}" | awk '{ print $1 }' )"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dpb587/timepolicy/releases/download/${version}/timepolicy-${version}-darwin-arm64.zip"
    sha256 "$( grep -e '-darwin-arm64.zip$' "${sha256sum}" | awk '{ print $1 }' )"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dpb587/timepolicy/releases/download/${version}/timepolicy-${version}-linux-amd64.tar.gz"
    sha256 "$( grep -e '-linux-amd64.tar.gz$' "${sha256sum}" | awk '{ print $1 }' )"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/dpb587/timepolicy/releases/download/${version}/timepolicy-${version}-linux-arm64.tar.gz"
    sha256 "$( grep -e '-linux-arm64.tar.gz$' "${sha256sum}" | awk '{ print $1 }' )"
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
EOF
}

recipe Timepolicy $( sed -e 's/^v//' < "${resources_path}/release/latest/version" ) "${resources_path}/release/latest/sha256sum.txt" \
  > "${repodir}/Formula/timepolicy.rb"
