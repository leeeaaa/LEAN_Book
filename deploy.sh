#!/usr/bin/bash
set -eu
set -v

rm -rdf deploy

# 1. Build

python3 ./lean_source/mkdoc.py

make clean
make html
make latexpdf

# 3. Deploy

git clone git@github.com:leeeaaa/TaylorpolynomBuch.git deploy

cd deploy

rm -rf ./html
rm -rf ./src

cp -rf ../user_repo/. .
cp -f ../leanpkg.toml .

cp -rf ../build/html ./html
cp -f ../build/latex/lean_buch.pdf .
cp -rf ../src ./src

DATE=$(date +"%m/%d/%Y %T")

git add .
git commit -m "Update $DATE"
git push

cd ..
rm -rf deploy
