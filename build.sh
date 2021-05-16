#!/bin/bash

set -o xtrace
set -e

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "${PROJECT_DIR}"

GOOS=windows GOARCH=386 go build -o "bin/RTSPtoWSMP4f-win32.exe"
GOOS=windows GOARCH=amd64 go build -o "bin/RTSPtoWSMP4f-win64.exe"
GOOS=darwin GOARCH=amd64 go build -o "bin/RTSPtoWSMP4f-macos-amd64"
GOOS=linux GOARCH=amd64 go build -o "bin/RTSPtoWSMP4f-linux-amd64"

cp config.json bin/
