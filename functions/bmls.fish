#!/usr/local/bin/fish

function bmls
    set -x BMRC ~/.bmrc
    touch $BMRC
    cat $BMRC | sort -n
end
