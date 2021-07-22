#!/bin/zsh

# c(reate, z( Compress archive with), f(ile)
go build main.go -o appbrew
tar -czf appbrew.v0.0.50.tgz appbrew
sha256sum appbrew.v0.0.50.tgz
gh release create v0.0.50 ./*.tgz