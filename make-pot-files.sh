#!/usr/bin/env bash

# Bash script that renders pot (template, source) gettext files from po files
# which may contain translations.
#
# The empty pot translation files are required for some services, e.g. Transifex.

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` [optional target directory]"
    exit 0
fi

TARGET=${1:-.}

find $TARGET -name "*.po" -print0 | xargs -0 -I {} msgfilter -i {} -o {}.pot true
