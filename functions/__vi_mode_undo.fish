# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_undo
    set -l cmdline (commandline)
    set -l pos (commandline -C)
    commandline $__vi_mode_undo_cmdline
    commandline -C $__vi_mode_undo_cmdline_pos
    set -g __vi_mode_undo_cmdline $cmdline
    set -g __vi_mode_undo_cmdline_pos $pos
end

# vi:noexpandtab:sw=4:ts=4
