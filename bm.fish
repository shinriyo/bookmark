#!/usr/local/bin/fish

function __bm_get
#   escaped_bmid=$(echo "$1" | sed -e 's/[^a-zA-Z0-9<>]/\\&/g')
#   cat $BMRC | grep -E "^${escaped_bmid}\\|" | cut -d '|' -f 2 | head -n 1
end

function bm
#   local bmid=$1
#   if test -z "$bmid" ; then
#     bmls
#     return
#   end

#   local bmdir=$(__bm_get "$bmid")
#   if test -z "$bmdir" ; then
#     echo "$bmid is not in bm list" 1>&2
#     return 1
#   end

#   cd "$bmdir"
end