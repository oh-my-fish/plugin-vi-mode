# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_save_cmdline
    # Only vi style single level for now, patch to suppport vim style
    # multi-level undo history welcome
    set -g __vi_mode_undo_cmdline (commandline)
    set -g __vi_mode_undo_cmdline_pos (commandline -C)
end

# vi:noexpandtab:sw=4:ts=4
