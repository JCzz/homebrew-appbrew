#!/bin/zsh

# c(reate, z( Compress archive with), f(ile)
go build main.go -o appbrew
tar -czf appbrew.v0.0.52.tgz appbrew
sha256sum appbrew.v0.0.52.tgz

git add .
git commit -m "form"
git push

gh release create v0.0.51 appbrew.v0.0.51.tgz
# ./*.tgz