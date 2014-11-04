#! /bin/bash --login

set -e

source ~/.rvm/scripts/rvm

rm -fr _site

rvm use 2.1.4
bundle install
jekyll build

/home/ubuntu/bin/s3-jekyll-deploy/s3-jekyll-deploy www.veterinariahomeopatia.com.br

curl "http://feedburner.google.com/fb/a/pingSubmit?bloglink=http%3A%2F%2Fwwww.veterinariahomeopatia.com.br"
