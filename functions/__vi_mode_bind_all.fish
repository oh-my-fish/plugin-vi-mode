# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_bind_all
    # There seems to be some magic that doesn't work properly without this:
    bind '' self-insert

    python -c "
command = '''$argv'''
for c in map(chr, range(0x20, 0x7f)):
    q = '\"' # Enclose command in these
    Q = '\'' # Other quote - for quotes inside command
    if c == '\"':
        l = r = r'\\%s' % c
        (q, Q) = (Q, q) # Swap quotes
    elif c in ['(', ')', '<', '>', ';', '|', '\'']:
        l = r = r'\%s' % c
    elif c == '\\\\':
        l = r'\\\\'
        r = r'\\\\\\\\'
    elif c == '\$':
        l = '\%s' % c
        r = r\"'\%s'\" % c
    else:
        l = r = \"'%s'\" % c
    print ( 'bind %s %s%s%s' % (l, q, command.replace('%k', r).replace('%q', Q), q))
    " | .
end

# vi:noexpandtab:sw=4:ts=4
