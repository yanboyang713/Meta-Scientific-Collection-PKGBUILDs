#!/bin/bash
set -o errexit -o pipefail -o nounset
cd "$(dirname "$0")" && pwd

# shellcheck disable=SC2012
ls -1 tests | while read -r name; do
  echo "TEST $name" >&2
  "./tests/$name"
done
