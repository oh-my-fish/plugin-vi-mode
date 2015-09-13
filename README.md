[![][travis-badge]][travis-link]
![][license-badge]

<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>

# vi-mode

Plugin for [Oh My Fish][omf-link].

## Install

```fish
$ omf install vi-mode
```


## Usage
### Default mode
The default vi mode can be set by defining the variable `vi_mode_default` in
your `config.fish`.
If used, this variable must be set before loading `oh-my-fish`.
Its default value is `vi_mode_insert`.

To set normal mode as default:

    set vi_mode_default vi_mode_normal
    
### Mode indicator
The mode indicator is stored in the variable `vi_mode`.

See the oh-my-fish theme `simplevi` for an example of integration of the
indicator into the prompt.

### User key bindings
User additional key bindings can be defined with the function
`vi_mode_user_key_bindings`. If used, this function must be defined before
loading `oh-my-fish`.

Example:

    function vi_mode_user_key_bindings
        bind \el  suppress-autosuggestion
    end

# License

[MIT][mit] © [Ian Munsie][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/DarkStarSword
[contributors]:   https://github.com/oh-my-fish/plugin-vi-mode/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[travis-badge]:   http://img.shields.io/travis/{{USER}}/{{NAME}}.svg?style=flat-square
[travis-link]:    https://travis-ci.org/{{USER}}/{{NAME}}
