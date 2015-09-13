function __vi_mode_common_insert 
    __vi_mode_common
    bind \e 'commandline -f backward-char; vi_mode_normal'
    if functions -q vi_mode_user
        vi_mode_user insert
    end
end
