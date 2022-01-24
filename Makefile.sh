#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail -o xtrace

# Switch to this file's directory
cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

declare -A aliases=(
	#[suite]='tag1 tag2 ...'
)
aliases[$(< latest.txt)]+=' latest'

echo $aliases
