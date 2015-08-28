#! /bin/bash
#
# setup-codebase.sh
# Copyright (C) 2015 KuoE0 <kuoe0.tw@gmail.com>
#
# Distributed under terms of the MIT license.
#

TARGET=$1

# setup b2g-manifest
git clone git@github.com:KuoE0/b2g-manifest.git "$TARGET/b2g-manifest"
cd "$TARGET/b2g-manifest"
git remote add mozilla https://github.com/mozilla-b2g/b2g-manifest.git
git fetch mozilla
cd -

# setup B2G-dev
cd "$TARGET/B2G-dev"
git clone git@github.com:KuoE0/B2G-dev.git      "$TARGET/B2G-dev"
git remote add mozilla https://github.com/mozilla-b2g/B2G.git
git fetch mozilla
cd -

# setup gecko-dev
cd "$TARGET/gecko-dev"
git clone git@github.com:KuoE0/gecko-dev.git    "$TARGET/gecko-dev"
git remote add mozilla https://github.com/mozilla/gecko-dev.git
git fetch mozilla
cd -

# setup gaia-dev
cd "$TARGET/gaia-dev"
git clone git@github.com:KuoE0/gaia-dev.git	    "$TARGET/gaia-dev"
git remote add mozilla https://github.com/mozilla-b2g/gaia
git fetch mozilla
cd -

