##########################
# Chloe B.'s FISH Prompt #
##########################

function fish_prompt
    # Store the return status (code) of the previous command.
    set -l returnStatus $status

    # Set the default color.
    set -l defaultColor (set_color normal)

    # Set the accent color.
    set -l accentColor (set_color F5A9B8)

    # Set the status color.
    set -l statusColor (set_color BF3F3F)

    # Format the first line of the prompt.
    set -l formattedFirstLine "╭─ ["$accentColor$USER$defaultColor"@"$accentColor$hostname$defaultColor"] =(^·^)="
    
    # Format the second line of the prompt.
    set -l formattedSecondLine "╰─ ("$accentColor(prompt_pwd)$defaultColor")"

    # Format the second line of the prompt (continued).
    set -l promptStatus

    # If returnStatus != 0...
    if test $returnStatus -ne 0
        # Set promptStatus to [$returnStatus].
        set promptStatus "["$statusColor$returnStatus$defaultColor"]"
    end

    # Format the second line of the prompt (continued).
    set -l promptSuffix $defaultColor"~> "

    printf "%s\n%s %s %s" $formattedFirstLine $formattedSecondLine $promptStatus $promptSuffix
end
