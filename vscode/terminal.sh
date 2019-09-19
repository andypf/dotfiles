#!/bin/sh

# terminal with tmux
SESSION="vscode`pwd`"
tmux attach-session -d -t $SESSION || tmux new-session -s $SESSION
