# dotfiles - chezmoi managed dotfiles 

I used to use a bare git repo to manage my dotfiles with a separate branch for each machine I had custom setup on, but that was too much of a chore to maintain.

All in one kick off to install chezmoi in `./bin/` and setup these dotfiles:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kalebo 
```
