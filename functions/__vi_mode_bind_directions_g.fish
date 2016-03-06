# vi:noexpandtab:sw=4:ts=4
#
function __vi_mode_bind_directions_g
    for direction in e E
        bind $direction "$argv[3]; __vi_mode_direction_command '$argv[1]' g$direction; $argv[2]"
    end
end

# vi:noexpandtab:sw=4:ts=4
