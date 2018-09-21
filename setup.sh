#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd ${SCRIPT_DIR}
cp -LRv Library/* ~/Library
popd

launchctl unload ~/Library/LaunchAgents/local.switch-netloc.plist
launchctl load ~/Library/LaunchAgents/local.switch-netloc.plist
