#!/usr/bin/env bash

set -euo pipefail

# Configurations
term="alacritty"
theme="$HOME/.local/share/rofi/themes/minimal/style.rasi"

# Check which clipboard manager is available
if command -v cliphist &>/dev/null; then
	clipboard_manager="cliphist"
elif command -v clipman &>/dev/null; then
	clipboard_manager="clipman"
else
	echo "No supported clipboard manager found."
	exit 1
fi

# Get clipboard content based on the available manager
case $clipboard_manager in
cliphist)
	clipboard_content=$(cliphist list)
	;;
clipman)
	clipboard_content=$(clipman pick -t STDOUT)
	;;
*)
	echo "Unsupported clipboard manager."
	exit 1
	;;
esac

# Use rofi to display clipboard content and select an item
selected_item=$(echo "$clipboard_content" | rofi \
	-dmenu \
	-p "Clipboard History" \
	-scroll-method 0 \
	-terminal "$term" \
	-kb-cancel Escape \
	-theme "$theme")

# If an item was selected, store it in the clipboard
if [[ -n "$selected_item" ]]; then
	case $clipboard_manager in
	cliphist)
		# Remove the index and leading whitespace before storing
		selected_content=$(echo "$selected_item" | awk '{$1=""; print $0}' | sed 's/^ *//')
		echo -ne "$selected_content" | cliphist store
		wl-copy "$selected_content" # Copy only the selected text
		;;
	clipman)
		echo -ne "$selected_item" | clipman store
		;;
	*)
		echo "Unsupported clipboard manager."
		exit 1
		;;
	esac
fi
