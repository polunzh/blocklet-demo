#!/usr/bin/env bash

RELEASE_VERSION=v$(VERSION)
GIT_BRANCH=$(strip $(shell git symbolic-ref --short HEAD))
GIT_VERSION="$(strip $(shell git rev-parse --short HEAD))"

bump-version:
	@echo "Bump version..."
	@.makefiles/bump_version.sh
	@test -f "package.json" && .makefiles/bump_node_version.sh
	@test -f "blocklet.yml" && .makefiles/bump_blocklet_version.sh
