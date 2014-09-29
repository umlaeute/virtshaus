#!/bin/sh

# switch to 'debian'-branch
git checkout debian || exit 1
# merge in 'master'
git merge master || exit 1
# update debian/changelog
dch "new upstream"
dch -r
git commit debian/changelog -m "ready for upload"
dpkg-buildpage -r fakeroot
