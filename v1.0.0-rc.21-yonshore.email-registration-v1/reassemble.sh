#!/usr/bin/env bash
set -Eeuo pipefail

archive="new-api-v1.0.0-rc.21-yonshore.email-registration-v1-corresponding-source.tar.gz"
expected_size=5333068
expected_sha256="67f266b400d5d559eefae70f47c4d075f59944330d9e077485425abb6991f812"

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$script_dir"

for index in 00 01 02 03 04 05 06 07; do
  part="parts/${archive}.part-${index}"
  [[ -s "$part" ]] || {
    echo "缺少源码分片：$part" >&2
    exit 1
  }
done

temporary="${archive}.tmp.$$"
trap 'rm -f -- "$temporary"' EXIT
LC_ALL=C cat "parts/${archive}.part-"* >"$temporary"

actual_size="$(wc -c <"$temporary" | tr -d ' ')"
actual_sha256="$(shasum -a 256 "$temporary" | awk '{print $1}')"
[[ "$actual_size" == "$expected_size" ]]
[[ "$actual_sha256" == "$expected_sha256" ]]
mv -- "$temporary" "$archive"
trap - EXIT
echo "对应源码重组并校验通过：$archive"
