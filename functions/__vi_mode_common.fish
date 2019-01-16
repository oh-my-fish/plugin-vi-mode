# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_common -d "common key bindings for all vi-like modes"
    __vi_mode_common_emacs

    bind \e vi_mode_normal

    # Can we put commandline into history when pressing ^C?
    bind \cc '__vi_mode_save_cmdline; for i in (seq (count (commandline))); echo; end; commandline ""; vi_mode_insert'

    bind \n "commandline -f execute; "$vi_mode_default
    __vi_mode_user_key_bindings
end

# vi:noexpandtab:sw=4:ts=4
