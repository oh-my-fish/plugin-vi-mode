# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_common_insert -d "common key bindings for all insert vi-like modes"
    __vi_mode_common
    bind \e 'commandline -f backward-char; vi_mode_normal'
    if functions -q vi_mode_user
        vi_mode_user insert
    end
end

# vi:noexpandtab:sw=4:ts=4
