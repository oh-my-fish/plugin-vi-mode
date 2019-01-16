# vi:noexpandtab:sw=4:ts=4
#
function vi_mode_insert -d "vi-like key bindings for fish (insert mode)"
    __vi_mode insert

    fish_default_key_bindings

    __vi_mode_common_insert
end

# vi:noexpandtab:sw=4:ts=4
