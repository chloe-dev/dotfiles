#####################################
# Chloe B.'s Git for Dotfiles Alias #
#####################################

function dotfiles
    sudo /usr/bin/git --git-dir=/.dotfiles --work-tree=/ $argv
end
