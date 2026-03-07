####################################
# Chloe B.'s (Private) FISH Prompt #
####################################

function fish_prompt
    # Store the return status (code) of the previous command.
    set -l returnStatus $status

    # Set the default color.
    set -l defaultColor (set_color normal)

    # Set the accent color.
    set -l accentColor (set_color 668AAB)

    # Set the status color.
    set -l statusColor (set_color BF3F3F)

    # Format the of prompt's prefix.
    set -l promptPrefix "("$accentColor(prompt_pwd)$defaultColor")"

    # Format the prompt's status.
    set -l promptStatus

    # If returnStatus != 0...
    if test $returnStatus -ne 0
        # Set promptStatus to [$returnStatus].
        set promptStatus "["$statusColor$returnStatus$defaultColor"]"
    end

    # Format the prompt's suffix.
    set -l promptSuffix $defaultColor"~> "

    printf "%s %s %s" $promptPrefix $promptStatus $promptSuffix
end
