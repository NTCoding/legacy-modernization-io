#!/bin/zsh
# Start Hugo server and log output unbuffered to build.log and the console
#
# If you see 'too many open files' errors, try running:
#   sudo launchctl limit maxfiles 128000 524288
# to increase the system-wide file descriptor limits on macOS.
set -euo pipefail

# Show current open file limit
ulimit -n

# Increase open file limit for this shell
ulimit -n 4096

# Show new open file limit
ulimit -n

# Kill any running hugo server processes to avoid build lock errors
if pgrep -x "hugo" >/dev/null; then
  echo "Killing existing hugo processes..."
  pkill -x hugo
  # Wait briefly to ensure processes are terminated
  sleep 2
fi

# Remove lingering build lock file if present
rm -f .hugo_build.lock

# Show any remaining hugo processes (should be none)
ps aux | grep '[h]ugo' || echo "No hugo processes running."

if ! command -v hugo >/dev/null 2>&1; then
  echo "Error: Hugo is not installed or not in PATH." >&2
  exit 1
fi

hugo server -D | tee build.log
