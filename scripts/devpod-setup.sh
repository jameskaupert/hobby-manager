#!/bin/bash
set -euo pipefail

echo "Setting up devpod environment..."
echo "Building/rebuilding devpod container..."
devpod up . --recreate
sleep 2

if [[ "$TERM" != "xterm-256color" && "$TERM" != "xterm" ]]; then
  echo "Installing $TERM terminal info in container..."
  if infocmp "$TERM" >/dev/null 2>&1; then
    infocmp -x "$TERM" | ssh hobby-manager.devpod -- tic -x -
    echo "$TERM terminal info installed successfully!"
  else
    echo "Warning: Could not find $TERM terminfo on host, using xterm-256color fallback"
  fi
fi

echo "Devpod setup complete!"
echo "Connect with: ssh hobby-manager.devpod"

