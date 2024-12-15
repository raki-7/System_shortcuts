#!/usr/bin/env bash
#------------------------------------------------------------------------------
#For renaming the yt download file
#usage: ./rename_ytd.sh
#------------------------------------------------------------------------------
find -type f -name "*\[*\]*" | while read file; do
	new_name="$(echo "$file" | sed 's/ \[[-A-Za-z0-9_]\+\]//')"
#	echo "Renamed to $new_name from $file"
	mv "$file" "$new_name"
done
#----------------------------End-----------------------------------------------
