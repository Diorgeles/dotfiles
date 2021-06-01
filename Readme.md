# INITIAL CONFIG

```bash
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ln -s $PWD/nvim ~/.config/nvim
  ln -s $PWD/coc ~/.config/coc
  ln -s $PWD/.zshrc ~/
  ln -s $PWD/.tmux.conf ~/
  ln -s $PWD/.tmux ~/
  ln -s $PWD/.gitconfig ~/
  ln -s $PWD/alacritty ~/.config
```
