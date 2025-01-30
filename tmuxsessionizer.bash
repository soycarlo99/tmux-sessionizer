#!/bin/bash

SESSION_NAME="my_session"
WORK_DIR="$HOME/repos/my_project"  # Change this to your project path

# Check if the session already exists
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
  echo "Tmux session '$SESSION_NAME' already exists. Attaching..."
  tmux attach -t $SESSION_NAME
  exit 0
fi

# Create a new tmux session and start in the project directory
tmux new-session -d -s $SESSION_NAME -c $WORK_DIR

# Split the window into two panes
tmux split-window -h -c $WORK_DIR
tmux split-window -v -c $WORK_DIR

# Select the first pane and attach to the session
tmux select-pane -t 0
tmux attach -t $SESSION_NAME
