# additional user key bindings go in vi_mode_user_key_bindings

function __vi_mode_user_key_bindings
    if functions | grep "vi_mode_user_key_bindings" > /dev/null
        vi_mode_user_key_bindings
    end
end
