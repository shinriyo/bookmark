#!/usr/local/bin/fish

set -x BMRC ~/.bmrc

function __bm_get
    set escaped_bmid `(echo "$1" | sed -e 's/[^a-zA-Z0-9<>]/\\&/g')`
    cat $BMRC | grep -E "^\${escaped_bmid}\\|" | cut -d '|' -f 2 | head -n 1
end

function bm
    set -l bmid $1

    if test -z "$bmid"
        # just call showlist, bmls command
        bmls
        return
    end

    set -l bmdir `(__bm_get "$bmid")`
    if test -z "$bmdir"
        echo "$bmid is not in bm list" 1>&2
        return 1
    end

    cd "$bmdir"
end