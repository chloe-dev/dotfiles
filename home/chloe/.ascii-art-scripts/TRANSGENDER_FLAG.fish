#!/usr/bin/env fish

################################
# Chloe B.'s ASCII Art Scripts #
################################

set -l lineString "████████████████████████████████████████"

set -l transgenderBlue 5BCEFA
set -l transgenderPink F5A9B8
set -l transgenderWhite FFFFFF

set -l blueString (set_color $transgenderBlue)$lineString\n$lineString\n(set_color normal)
set -l pinkString (set_color $transgenderPink)$lineString\n$lineString\n(set_color normal)
set -l whiteString (set_color $transgenderWhite)$lineString\n$lineString\n(set_color normal)

set -l formattedString $blueString$pinkString$whiteString$pinkString$blueString

printf "%s\n" $formattedString
