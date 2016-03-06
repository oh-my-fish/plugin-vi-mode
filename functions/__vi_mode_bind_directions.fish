# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_bind_directions
    __vi_mode $argv[1]

    for direction in W w E e B b 0 _ h l
        bind $direction "$argv[3]; __vi_mode_direction_command '$argv[1]' $direction; $argv[2]"
    end
    bind \$ "$argv[3]; __vi_mode_direction_command '$argv[1]' eol; $argv[2]"
    bind \^ "$argv[3]; __vi_mode_direction_command '$argv[1]' fnw; $argv[2]"
    for direction in f F t T
        bind $direction "__vi_mode_bind_all '$argv[3]; __vi_mode_direction_command %q$argv[1]%q {$direction}:%k; $argv[2]'"
    end

    bind g "__vi_mode_bind_directions_g $argv"
end

# vi:noexpandtab:sw=4:ts=4
