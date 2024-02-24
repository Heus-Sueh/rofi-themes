#!/bin/bash

# Directory where themes are located
themes_dir="$HOME/.local/share/rofi/themes"

# Directory where scripts are located
scripts_dir="$HOME/.local/share/rofi/scripts"

# Temporary directory for cloning the repository
temp_dir=$(mktemp -d)

# Clone the repository
git clone https://github.com/Heus-Sueh/rofi-themes.git "$temp_dir"

# Function to install a theme
install_theme() {
    local theme_name="$1"
    local theme_dir="$temp_dir/themes/$theme_name"
    local target_theme_dir="$themes_dir/$theme_name"
    local target_script_dir="$scripts_dir/$theme_name"

    # Check if the theme already exists
    if [ -d "$target_theme_dir" ]; then
        echo "Theme '$theme_name' is already installed."
    else
        echo "Installing theme '$theme_name'..."
        # Create theme directory
        mkdir -p "$target_theme_dir"
        # Copy theme files to themes directory
        cp -r "$theme_dir"/* "$target_theme_dir/"
        # Check if there are associated scripts
        if [ -d "$theme_dir/scripts" ]; then
            # Create script directory if it doesn't exist
            mkdir -p "$target_script_dir"
            # Copy scripts to Rofi scripts directory
            cp -r "$theme_dir/scripts"/* "$target_script_dir/"
        fi
        echo "Theme '$theme_name' installed successfully."
    fi
}

# Iterate over each theme directory
for theme_dir in "$temp_dir/themes"/*/; do
    theme_name=$(basename "$theme_dir")
    # Check if it's a directory
    if [ -d "$theme_dir" ]; then
        # Install the theme
        install_theme "$theme_name"
    fi
done

# Copy the generic_launcher to ~/.local/share/rofi/scripts
cp "$temp_dir/scripts/generic_launcher" "$scripts_dir/"

echo "Installation complete."

# Remove the temporary directory
rm -rf "$temp_dir"
