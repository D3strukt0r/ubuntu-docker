#!/usr/bin/env bash

declare -A aliases=(
	#[suite]='tag1 tag2 ...'
)
aliases[$(< latest.txt)]+=' latest'

echo $aliases
