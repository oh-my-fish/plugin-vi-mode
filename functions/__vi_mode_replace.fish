# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_replace
    __vi_mode replace
    bind --erase --all
    __vi_mode_common

    # backward-char should happen last, but only works if specified first
    # (guess I should dig through the C code and figure out what is going
    # on):
    # __vi_mode_bind_all "commandline -f delete-char; commandline -i %k; commandline -f backward-char; vi_mode_normal"
    __vi_mode_bind_all "__vi_mode_save_cmdline; commandline -f backward-char delete-char; commandline -i %k; vi_mode_normal"

    if functions -q vi_mode_user
        vi_mode_user replace
    end
end

# vi:noexpandtab:sw=4:ts=4
