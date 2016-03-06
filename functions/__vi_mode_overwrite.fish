# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_overwrite
    __vi_mode REPLACE
    bind --erase --all
    __vi_mode_common_insert
    __vi_mode_save_cmdline

    __vi_mode_bind_all "commandline -f delete-char; commandline -i %k"
    if functions -q vi_mode_user
        vi_mode_user overwrite
    end
end

# vi:noexpandtab:sw=4:ts=4
