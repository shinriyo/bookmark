#!/usr/local/bin/fish

set -x BMRC ~/.bmrc
function __bm_path_list
    cat $BMRC | cut -d '|' -f 2
end

function __bm_id_list
    cat $BMRC | cut -d '|' -f 1
end

function bmadd
    set -l bmdir $PWD
    set -l newid $1

    if __bm_path_list | grep -F -x "$bmdir" > /dev/null
        echo "$bmdir is already in bm list" 1>&2
        return 2
    end

    # not empthy
    if test -n "$newid"
        if __bm_id_list | grep -F -x "$newid" > /dev/null
            echo "$newid is already used as bm id" 1>&2
            return 3
        end
    end

    # is empty
    if test -z "$newid"
        set -l maxid
        set maxid `(__bm_id_list | grep '^[0-9][0-9]*\$' | sort -n -r | head -1)`
        if test -n "$maxid" && test "$maxid" -ge 1
            set newid (math maxid + 1)
        else
            set newid 1
        end
    end

    echo "$newid|$bmdir" >> $BMRC
end
