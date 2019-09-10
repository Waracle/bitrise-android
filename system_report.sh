#!/bin/bash
set -e

# Run the office system report first, then run the output from our tooling installation
./system_report-base.sh

# Make sure that the reported version is only
#  a single line!
echo
echo "=== Waracle Pre-installed tool versions ========"

ver_line="$(envsubst --version | head -1)" ;    echo "* envsubst: $ver_line"
ver_line="$(jq --version | head -1)" ;          echo "* jq: $ver_line"
