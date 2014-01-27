#!/bin/bash

handle_error() {
    echo "FAILED: $1:$2, exit code $3"
    exit 1
}

trap 'handle_error $0 $LINENO $?' ERR
