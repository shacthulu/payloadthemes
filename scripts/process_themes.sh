#!/bin/bash

MANIFEST_FILE=manifest.json
echo "{" > $MANIFEST_FILE
first=true

for file in themes/*.scss; do
    # Read metadata
    theme=$(sed -n '1p' $file | cut -d ' ' -f3 | tr -d '*/')
    description=$(sed -n '2p' $file | cut -d ' ' -f3 | tr -d '*/')
    author=$(sed -n '3p' $file | cut -d ' ' -f3 | tr -d '*/')
    version=$(sed -n '4p' $file | cut -d ' ' -f3 | tr -d '*/')
    download_link="https://raw.githubusercontent.com/[username]/[repo]/master/$file"

    # Append to JSON
    if [ "$first" = true ]; then
        first=false
    else
        echo "," >> $MANIFEST_FILE
    fi

    cat << EOF >> $MANIFEST_FILE
    "$theme": {
        "description": "$description",
        "author": "$author",
        "version": "$version",
        "download_link": "$download_link"
    }
EOF
done

echo "}" >> $MANIFEST_FILE
