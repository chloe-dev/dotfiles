#!/usr/bin/env fish

################################
# Chloe B.'s ASCII Art Scripts #
################################

set -l lineString "████████████████████████████████████████"

set -l bisexualPink D60270
set -l bisexualPurple 9B4F96
set -l bisexualBlue 0038A8

set -l pinkString (set_color $bisexualPink)$lineString\n$lineString\n$lineString\n$lineString\n(set_color normal)
set -l purpleString (set_color $bisexualPurple)$lineString\n$lineString\n(set_color normal)
set -l blueString (set_color $bisexualBlue)$lineString\n$lineString\n$lineString\n$lineString\n(set_color normal)

set -l formattedString $pinkString$purpleString$blueString

printf "%s\n" $formattedString
