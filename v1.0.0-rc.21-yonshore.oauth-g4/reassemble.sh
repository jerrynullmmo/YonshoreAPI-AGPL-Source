#!/usr/bin/env bash
set -Eeuo pipefail
set +x
export LC_ALL=C

archive_name="new-api-v1.0.0-rc.21-yonshore-corresponding-source.tar.gz"
expected_size="6957101"
expected_sha256="8016ad465f8ddfdc98a8c7d78ae88219cabff7a17004957675eadafcbfb9fe03"
script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
output_dir="${1:-$script_dir}"
output_path="$output_dir/$archive_name"

mkdir -p -- "$output_dir"
parts=("$script_dir"/parts/"$archive_name".part-*)
[[ "${#parts[@]}" -eq 10 ]]
cat -- "${parts[@]}" >"$output_path"
[[ "$(stat -f '%z' "$output_path" 2>/dev/null || stat -c '%s' "$output_path")" == "$expected_size" ]]
[[ "$(shasum -a 256 "$output_path" | awk '{print $1}')" == "$expected_sha256" ]]
printf 'corresponding_source_reassembled=true\narchive=%s\nsha256=%s\n' "$output_path" "$expected_sha256"
