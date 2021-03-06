# opinionated dotfiles

My Mac OSX dotfiles.
Setups for zsh, vim, atom, python, ruby, git and more.

Based on the following repositories:
* [jacobwg/dotfiles/](https://github.com/jacobwg/dotfiles/)
* [holman/dotfiles](https://github.com/holman/dotfiles)
* [ryanb/dotfiles](https://github.com/ryanb/dotfiles)
* [mathiasbynes/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [alrra/dotfiles](https://github.com/alrra/dotfiles)

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io) to install: things like Chrome and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## install

``` bash
$ git clone https://github.com/abourazanis/dotfiles~/.dotfiles
$ cd ~/.dotfiles
$ script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`, which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS defaults, and so on. Tweak this script, and occasionally run `dot` from time to time to keep your environment fresh and up-to-date.  You can find this script in `bin/`.

