#################################
# Chloe B.'s FISH Configuration #
#################################

if status is-interactive
    # Set the editor environment variables to Neovim (nvim).
    set -gx SUDO_EDITOR nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim

    # Add /opt/bin to the PATH environment variable.
    fish_add_path /opt/bin
end
