#########################################
# Chloe B.'s Monitor Screenshot Utility #
#########################################

function screenshot-monitor
    # Get the currently focused monitor.
    set -l monitor (hyprctl monitors | awk '/Monitor/{monitor=$2} /focused: yes/ {print monitor}')

    # Screenshot the monitor and send it to the clipboard.
    grim -o $monitor - | wl-copy
end
