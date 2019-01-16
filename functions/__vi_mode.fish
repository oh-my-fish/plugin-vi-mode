# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode
    # Is there a way to do this without eval?
    # We really want something like a dictionary...
    eval set -g vi_mode \$vi_mode_{$argv}
    commandline -f repaint
end

# vi:noexpandtab:sw=4:ts=4
