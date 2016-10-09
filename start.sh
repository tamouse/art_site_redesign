#!/bin/sh

tmux new -s live_jekyll -d
tmux send-keys -t live_jekyll 'bundle exec guard' C-m
tmux split-window -v -t live_jekyll
tmux send-keys -t live_jekyll 'bundle exec jekyll serve' C-m
tmux attach -t live_jekyll
