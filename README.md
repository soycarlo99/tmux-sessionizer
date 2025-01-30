# Tmux Sessionizer

Easily create and manage tmux sessions with predefined directory and pane setup.

## Features

* Automatically create a tmux session: Quickly set up a new session for your projects.
* Open a project directory on startup: Start your session in the desired directory.
* Split panes into a structured workspace: Organize your workspace with multiple panes.

## Installation

Clone this repository:

```bash
git clone https://github.com/YOUR_USERNAME/tmux-sessionizer.git
cd tmux-sessionizer
```

Make the script executable:

```bash
chmod +x tmux-session.sh
```

Optionally, add the script to your system's PATH or create an alias for easier access (see below).

## Usage

Edit the script: Modify tmux-session.sh to set your desired session name and project directory.

```bash
SESSION_NAME="my_session"
WORK_DIR="$HOME/repos/my_project"  # Change this to your project path
```

Run the script: Execute the script to create and attach to your tmux session.

```bash
./tmux-session.sh
```

### Creating an Alias (Optional)

1. Open your shell configuration file (e.g., .bashrc, .zshrc).
2. Add the following line to create an alias:

```bash
alias tmux-session='~/path/to/tmux-sessionizer/tmux-session.sh'
```

3. Replace `~/path/to/tmux-sessionizer/` with the actual path to your cloned repository.
4. Restart your terminal or run `source ~/.bashrc` (or `source ~/.zshrc`) to apply the changes.
5. Use the alias: Now you can run your script using the alias:

```bash
tmux-session
```

## How It Works

The script performs the following operations:

* Checks if a tmux session with the specified name already exists
* If the session exists, it attaches to it. Otherwise, it creates a new session
* The session starts in the specified project directory
* The script splits the window into multiple panes for a structured workspace
