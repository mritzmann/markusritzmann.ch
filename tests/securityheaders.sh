#!/bin/bash
set -e 
set -o pipefail

URL=$1

# prevent duplicate entry
echo "prevent duplicate entry" | /usr/games/cowsay
if [ "$(curl --head --silent $URL | cut -d ":" -f1 | uniq --count --ignore-case --repeated | wc --line)" -eq 0 ] ; then echo ok ; else exit 1; fi

# Content-Security-Policy
echo "Content-Security-Policy" | /usr/games/cowsay
curl --head --silent $URL | grep --ignore-case "content-security-policy: default-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self' data:"

# X-Frame-Options
echo "X-Frame-Options" | /usr/games/cowsay
curl --head --silent $URL | grep --ignore-case "x-frame-options: sameorigin"

# X-Xss-Protection
echo "X-Xss-Protection" | /usr/games/cowsay
curl --head --silent $URL | grep --ignore-case "x-xss-protection: 1; mode=block"

# Referrer-Policy
echo "Referrer-Policy" | /usr/games/cowsay
curl --head --silent $URL | grep --ignore-case "referrer-policy: strict-origin-when-cross-origin"

# X-Content-Type-Options
echo "X-Content-Type-Options" | /usr/games/cowsay
curl --head --silent $URL | grep --ignore-case "x-content-type-options: nosniff"
