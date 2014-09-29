#!/bin/sh

# switch to 'debian'-branch
git checkout debian || exit 1
# merge in 'master'
git merge master || exit 1
# update debian/changelog
dch -r "new upstream"
git commit debian/changelog -m "ready for upload" || exit 1
dpkg-buildpackage -rfakeroot || exit 1
git checkout master
