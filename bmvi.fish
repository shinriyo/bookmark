#!/usr/local/bin/fish

function bmvi
    set -x BMRC ~/.bmrc
    touch $BMRC
    # open BMRC with EDITOR.
    vi $BMRC
end
