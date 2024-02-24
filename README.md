# Rofi Themes

This repository contains a collection of themes for Rofi, along with an installation script that allows installing all themes at once.

## Origin of Themes

The themes in this repository are based on small modifications from the following original repositories, however, not all themes have been modified to comply with the license:

- [rofi-collection](https://github.com/Murzchnvok/rofi-collection)
- [rofi-themes-collection](https://github.com/newmanls/rofi-themes-collection)
- [rofi-themes](https://github.com/davatorium/rofi-themes)
- [rofi](https://github.com/catppuccin/rofi)

All copyrights and credits for the original themes are reserved to their respective authors. This repository is a collection aimed to provide convenience and ease of use of Rofi themes with minimal modifications to meet specific user needs.

## How to Use

### 1. Run the installation script to install all themes:

```bash
curl -sSL "https://raw.githubusercontent.com/Heus-Sueh/rofi-themes/main/installer.sh" | sh
```

This script will install all available themes into the ~/.local/share/rofi/themes/ directory and associated scripts into ~/.local/share/rofi/scripts/.

### 2. Launcher Script

You can use a launcher script to launch Rofi with the desired theme. Here's an example script:

```bash
#!/usr/bin/env bash
theme_name="catppuccin/basic"
theme_dir="~/.local/share/rofi/themes/$theme_name"
launcher="$theme_dir/launcher_theme"
term="foot"
rofi \
	-show drun \
	-terminal $term \
	-kb-cancel Escape \
	-theme $launcher
```

### Setting Up Shortcuts in your Window Manager

<details>
    <summary><b>Sway</b></summary>
    In Sway, you can add the following lines to your config file (<code>`~/.config/sway/config`</code>):

    # Sway Config
    bindsym Mod1+d exec /path/to/your/launcher_script.sh

Replace `/path/to/your/launcher_script.sh` with the actual path to your launcher script.
</details>

<details>
    <summary><b>Hyprland</b></summary>
    In Hyprland, you can achieve similar functionality by adding the following lines to your configuration file (<code>~/.config/hypr/config</code>):

    # Hyprland Config
    bind=Mod1+d, exec, /path/to/your/launcher_script.sh

Replace `/path/to/your/launcher_script.sh` with the actual path to your launcher script.
</details>

### Directly Calling the Theme Directory

Alternatively, you can directly call Rofi with the theme file specified. For example:

```bash
rofi \
	-show drun \
	-terminal kitty \
	-kb-cancel Escape \
	-theme ~/.local/share/rofi/themes/catppuccin/basic/launcher_theme \
```

This command launches Rofi with the specified theme file. Make sure to replace `~/.local/share/rofi/themes/catppuccin/basic/launcher_theme` with the actual path to your theme file.

### Note

Please note that some themes may come with a launcher and various other scripts, such as a power menu, located in `~/.local/share/rofi/scripts/$theme`.

## Disclaimer

Please be aware that this script will overwrite any existing theme with the same name. Make sure to backup your existing themes if necessary.

## Contributions

Contributions are welcome! Feel free to add new themes or improve existing ones. Just submit a pull request with your changes.

## License

This repository is distributed under the [MIT](LICENSE) license. By using the themes in this repository, you agree to the terms of this license.

