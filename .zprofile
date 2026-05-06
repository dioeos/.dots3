echo "Loading zprofile... Welcome"
# prepend ~/.local/bin and ~/bin to $PATH unless it is already there
if ! [[ "$PATH" =~ "$HOME/bin" ]]
then
    PATH="$HOME/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]
then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH

#ensure systemd unit set graphical.target
if uwsm check may-start && uwsm select; then
    exec uwsm start default
    echo "Starting uwsm..."
fi
