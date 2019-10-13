#!/usr/local/bin/fish

function __bm_path_list
  cat $BMRC | cut -d '|' -f 2
end

function __bm_id_list
  cat $BMRC | cut -d '|' -f 1
end

function bmadd
#  local bmdir=$PWD
#   local newid=$1

#   if __bm_path_list | grep -F -x "$bmdir" > /dev/null; then
#     echo "$bmdir is already in bm list" 1>&2
#     return 2
#   end

#   if test -n $newid ; then
#     if __bm_id_list | grep -F -x "$newid" > /dev/null; then
#       echo "$newid is already used as bm id" 1>&2
#       return 3
#     end
#   end

#   if test -z $newid ; then
#     local maxid
#     maxid=$(__bm_id_list | grep '^[0-9][0-9]*$' | sort -n -r | head -1)
#     if [ -n "$maxid" ] && [ "$maxid" -ge 1 ]; then
#       newid=$((maxid + 1))
#     else
#       newid=1
#     end
#   end

#   echo "$newid|$bmdir" >> $BMRC
end
