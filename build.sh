#!/bin/bash

# Set version variables
VERSION="v1.2.3"
COMMIT=$(git rev-parse --short HEAD 2>/dev/null || echo "no-git")
DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Build with version information
echo "Building with:"
echo "  Version: $VERSION"
echo "  Commit: $COMMIT"
echo "  Date: $DATE"
echo

# Build the binary
go build -ldflags "-X main.version=$VERSION -X main.commit=$COMMIT -X main.date=$DATE" -o versioned-app

echo
echo "Build complete! Run './versioned-app -version' to see the embedded information."