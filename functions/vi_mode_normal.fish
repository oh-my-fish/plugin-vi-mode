# vi:noexpandtab:sw=4:ts=4
#
function vi_mode_normal -d "WIP vi-like key bindings for fish (normal mode)"
    __vi_mode normal

    bind --erase --all

    # NOTE: bind '' self-insert seems to be required to allow the
    # prompt to change, but we don't want unbound keys to be able to
    # self-insert, so set the default binding, but bind everything to
    # do nothing (which is wasteful, but seems to work):
    __vi_mode_bind_all ''

    __vi_mode_common

    # Fish recently gained support for this, redirect to /dev/null so it
    # doesn't fall over if running an old version of fish:
    commandline -f suppress-autosuggestion 2>/dev/null

    bind i '__vi_mode_save_cmdline; vi_mode_insert'
    bind I '__vi_mode_save_cmdline; __vi_mode_direction_command normal fnw; vi_mode_insert'
    bind a '__vi_mode_save_cmdline; commandline -f forward-char; vi_mode_insert'
    bind A '__vi_mode_save_cmdline; commandline -f end-of-line; vi_mode_insert'
    bind o '__vi_mode_save_cmdline; __vi_mode_direction_command o ""; vi_mode_insert'
    bind O '__vi_mode_save_cmdline; __vi_mode_direction_command O ""; vi_mode_insert'

    # Cool, these functions are pretty close to what I wanted:
    # FIXME: Cursor not placed in correct position, but moving it prevents further searching
    bind j down-or-search
    bind k up-or-search

    bind x '__vi_mode_save_cmdline; commandline -f delete-char'
    bind D '__vi_mode_save_cmdline; commandline -f kill-line'
    # bind Y 'commandline -f kill-whole-line yank'
    bind P '__vi_mode_save_cmdline; commandline -f yank'
    bind p '__vi_mode_save_cmdline; commandline -f yank forward-char' # Yes, this is reversed. Otherwise it does the wrong thing. Go figure.
    bind C '__vi_mode_save_cmdline; commandline -f kill-line; vi_mode_insert'
    bind S '__vi_mode_save_cmdline; commandline -f kill-whole-line; vi_mode_insert'
    bind s '__vi_mode_save_cmdline; commandline -f delete-char; vi_mode_insert'
    bind r __vi_mode_replace
    bind R __vi_mode_overwrite

    # XXX: The automagic completion sometimes displays the case from the
    # command it wants to complete instead of the case actually on the
    # commandline, so even though this works, it may not always appear to work.
    # I'm not sure if I can do anything about that, I'll need to look at the
    # code. Ideally I would turn off automagic completion whenever I'm not in
    # insert mode.
    bind \~ '__vi_mode_save_cmdline; commandline -f forward-char; __vi_mode_direction_command swapcase l'

    __vi_mode_bind_directions normal vi_mode_normal ''
    bind d '__vi_mode_bind_directions delete vi_mode_normal __vi_mode_save_cmdline'
    bind c '__vi_mode_bind_directions change vi_mode_insert __vi_mode_save_cmdline'

    # Override generic direction code for simple things that have a close
    # match in fish's builtin commands, which should be faster:
    bind h backward-char
    bind l forward-char
    bind 0 beginning-of-line
    # bind \$ end-of-line #FIXME: Cursor position
    # bind b backward-word # Note: built-in implementation only recently fixed. Also, before enabling this override, determine if this matches on the right characters

    bind g __vi_mode_g # MUST BE AFTER BIND_DIRECTIONS... I'm thinking about changing it so that this is all handled by bind_directions
    bind u __vi_mode_undo

    # NOT IMPLEMENTED:
    # bind 2 vi-arg-digit
    # bind y yank-direction
    # bind g magic :-P
    # bind ^a increment next number
    # bind ^x decrement next number
    # bind /?nN search (jk kind of does this)
    # registers (maybe try to make sensible integration into X, like an
    #   explicit yank with y goes to an X selection, while an implicit
    #   delete with x etc. doesn't. "* and "+ should natually go to the
    #   appropriate X selection if possible)
    # etc.

    if functions -q vi_mode_user
        vi_mode_user normal
    end
end

# vi:noexpandtab:sw=4:ts=4
