########################################
# Chloe B.'s Region Screenshot Utility #
########################################

function screenshot-region
    # Screenshot a region and send it to the clipboard.
    grim -g "$(slurp)" - | wl-copy
end
