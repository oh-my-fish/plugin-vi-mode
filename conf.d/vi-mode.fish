set_color normal

# vi:noexpandtab:sw=4:ts=4
#
# vi-mode for fish
# author: Ian Munsie
# Adapted for oh-my-fish by Sylvain Benner
#
# Requirements: fish 2.0+

# I'm thinking about changing these to separate out the colours from the text.
# I'm undecided on this though - when I support count arguments there may be
# some benefit from displaying the count here, but that would also make the
# size of these strings vary, which I'd rather not do...
set -l cn (set_color normal 2>/dev/null)
set -g vi_mode_normal  (set_color blue 2>/dev/null)'n'$cn
set -g vi_mode_replace (set_color red 2>/dev/null)'r'$cn
set -g vi_mode_REPLACE (set_color --background=red 2>/dev/null)'R'$cn
set -g vi_mode_insert  (set_color green 2>/dev/null)'i'$cn
set -g vi_mode_delete  (set_color red 2>/dev/null)'d'$cn
set -g vi_mode_change  (set_color yellow 2>/dev/null)'c'$cn
set -g vi_mode_g       (set_color blue 2>/dev/null)'g'$cn
set -g vi_mode_lower   (set_color blue 2>/dev/null)'u'$cn
set -g vi_mode_upper   (set_color blue 2>/dev/null)'U'$cn
set -g vi_mode_swapcase (set_color blue 2>/dev/null)'~'$cn

set -g __vi_mode_undo_cmdline ''
set -g __vi_mode_undo_cmdline_pos 0

# default vi mode
if test -z $vi_mode_default
    set -g vi_mode_default vi_mode_insert
end

# vi:noexpandtab:sw=4:ts=4
