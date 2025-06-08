#!/usr/bin/env bash
set -x # Uncomment this line for verbose debugging if needed

# This script displays keyboard shortcuts using dmenu.
# It reads shortcuts from individual files in the 'shortcuts/' directory.

# --- Configuration ---
# Define the directory where your individual .shortcuts files are located.
# IMPORTANT: This path must be absolute to where the *source* files are,
# or where they will be symlinked if you call dmenu directly.
# Let's assume you'll still keep them under your dotfiles structure:
SHORTCUTS_DIR="$HOME/.config/rofi/shortcuts" # This is where the symlinks will point to your source files

# --- Functions ---

# Function to generate the list of shortcuts for dmenu
generate_shortcuts_list() {
    # Check if the shortcuts directory exists and is readable
    if [ ! -d "$SHORTCUTS_DIR" ]; then
        echo "Error: Shortcuts directory not found or not accessible: $SHORTCUTS_DIR" >&2
        echo "Please ensure you have created '$SHORTCUTS_DIR' and placed your '.shortcuts' files inside it." >&2
        exit 1 # Exit with an error code
    fi

    # Use 'find' for robustness in case of many files or hidden ones, and sort for consistent order
    find "$SHORTCUTS_DIR" -maxdepth 1 -type f -name "*.shortcuts" | sort | while IFS= read -r file; do
        CATEGORY=$(basename "$file" .shortcuts)

        if [ -z "$CATEGORY" ] || [ ! -r "$file" ]; then
            continue
        fi

        # Add a header for the category (dmenu doesn't support markup, so plain text)
        echo "" # Add a blank line for visual spacing
        echo "--- $(echo "$CATEGORY" | tr '[:lower:]' '[:upper:]') Shortcuts ---"

        # Read each non-empty, non-comment line from the shortcut file and output it
        grep -vE '^\s*$' "$file" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | grep -vE '^#' | while IFS= read -r line; do
            echo "$line"
        done
    done
}

# --- Main Logic ---

# Generate the list of shortcuts and pipe it to dmenu
generate_shortcuts_list | dmenu -i -l 20 -p 'Shortcuts:' -fn 'JetBrains Mono-12' -nb '#000000' -nf '#ffffff'
