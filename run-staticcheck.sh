#!/usr/bin/env bash
go list ./... | grep -v /vendor/ | xargs staticcheck
