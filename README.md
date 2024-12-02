# Dotfiles Setup with GNU Stow

This repository contains my personal dotfiles, managed using GNU Stow. Follow these steps to set up your own dotfiles:

## Prerequisites

- **GNU Stow**: Install GNU Stow on your system. For example:
  - On macOS with Homebrew: `brew install stow`
  - On Debian/Ubuntu: `sudo apt install stow`
  - On Arch Linux: `sudo pacman -S stow`

## Setup

1. **Clone the Repository**: Clone this repository to your home directory:
   ```sh
   git clone https://github.com/SamueleVilla/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles

2. **Install All Dotfiles**: To install all dotfiles, run:
    ```sh
    stow .
