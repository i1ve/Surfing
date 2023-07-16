#!/bin/sh

version=$(cat module.prop | grep 'version=' | awk -F '=' '{print $2}')
filename="Surfing_${version}_release.zip"
zip -r -o -X -ll "$filename" ./ -x '.git/*' -x 'build.sh' -x '.github/*' -x 'Surfing.json'
