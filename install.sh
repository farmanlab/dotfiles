DOTPATH=~/.dotfiles
defaults write com.apple.finder AppleShowAllFiles TRUE

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done
