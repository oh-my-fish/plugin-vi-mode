# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_direction_command
    # commandline should always be last
    set ret (python (dirname (status -f))/vi-mode-impl.py $argv[1] $argv[2] (commandline -C) (commandline -L) (commandline))
    set new_pos $ret[-1]
    set -e ret[-1] # Guessing that deleting last element is likely to be faster than deleting first
    if test (count $ret) -gt 0
        commandline -- $ret
    end
    commandline -C $new_pos
end

# vi:noexpandtab:sw=4:ts=4
