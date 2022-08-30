#!/usr/bin/env bash


infi=$1

SCRATCH=$(mktemp --directory)

tar -zxf "$infi" --directory="$SCRATCH"

numSuccess=$(grep -r -l "SUCCESS" "$SCRATCH" | wc -l)
numFailure=$(grep -r -l "FAILURE" "$SCRATCH" | wc -l)


echo "There were $numSuccess successes and $numFailure failures."

rm -rf "$SCRATCH"
