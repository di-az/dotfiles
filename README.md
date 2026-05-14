
# Dotfiles

A collection of my personal configuration files and setup scripts for tools such as:

- Shells (`bash`, `zsh`)
- Terminal emulator (`kitty`)
- Editor (`Neovim`)
- Tiling window manager (`i3` / `Regolith`)
- Miscellaneous development and system configs

---

## Installation

### 1. Install Dotdrop

Install dotdrop
https://dotdrop.readthedocs.io/en/latest/installation/

### 2. Clone the repository

`git clone https://github.com/di-az/dotfiles.git`

### 3. Choose a profile

Available profiles:

| Profile      | Description                                                  |
|--------------|--------------------------------------------------------------|
| diaz         | Full desktop setup including shell, i3/Regolith configs     |
| diaz.local   | Minimal setup: Neovim and Kitty         |

### 4. Install the dotfiles

`dotdrop -p <PROFILE> install`

Example:
`dotdrop -p diaz.local install`

---

## Included Configurations

- bash
- zsh
- kitty
- nvim
- i3
- regolith

---

## Notes

- Some configurations are Linux-specific.
- Window manager configs are intended for i3/Regolith-based environments.
- Regolith no longer being used, i3 configs may be usable still.
- Review profile definitions before installation to avoid overwriting existing files.
