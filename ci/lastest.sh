#!/usr/bin/env bash
channel=$1
version=$(curl -fsSL "https://whisparr.servarr.com/v1/update/${channel}/changes?os=linuxmusl&runtime=netcore&arch=x64" | jq -r .[0].version)
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"
