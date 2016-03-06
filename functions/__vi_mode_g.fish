# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_g -d "vi-like key bindings for fish (commands starting with g)"
    __vi_mode g
    bind --erase --all
    __vi_mode_bind_all 'vi_mode_normal'
    __vi_mode_common

    bind I '__vi_mode_save_cmdline; commandline -f beginning-of-line; vi_mode_insert'
    # XXX: automagic completion sometimes hides the results of changing the case in these commands:
    bind u '__vi_mode_bind_directions lower vi_mode_normal __vi_mode_save_cmdline'
    bind U '__vi_mode_bind_directions upper vi_mode_normal __vi_mode_save_cmdline'
    bind \~ '__vi_mode_bind_directions swapcase vi_mode_normal __vi_mode_save_cmdline'
    # TODO: The rest of the g commands + directions.

    __vi_mode_bind_directions_g normal vi_mode_normal ''

    if functions -q vi_mode_user
        vi_mode_user g
    end
end

# vi:noexpandtab:sw=4:ts=4
