#!/usr/bin/env bash
PACKAGES=()
for PACKAGE in $(go list ./... | grep -v /vendor/); do
  PACKAGES+=($PACKAGE)
done
exec staticcheck $PACKAGES
