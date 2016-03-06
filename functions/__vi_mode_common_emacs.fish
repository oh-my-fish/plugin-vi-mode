# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_common_emacs -d "common key bindings for all vi-like modes that are identical to the emacs mode"
    # Feel free to expand this list for anything that makes sense, this is just
    # a couple of hand-picked ones that seemed useful and/or I use :)

    bind \e\[A up-or-search
    bind \e\[B down-or-search
    bind -k down down-or-search
    bind -k up up-or-search

    bind \e\[C forward-char
    bind \e\[D backward-char
    bind -k right forward-char
    bind -k left backward-char

    bind \e\[H beginning-of-line
    bind \e\[F end-of-line
    # OS X SnowLeopard doesn't have these keys. Don't show an annoying error message.
    bind -k home beginning-of-line 2> /dev/null
    bind -k end end-of-line 2> /dev/null

    bind \cl 'clear; commandline -f repaint'
    bind \cd delete-or-exit
end

# vi:noexpandtab:sw=4:ts=4
