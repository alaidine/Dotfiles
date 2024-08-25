# My Dotfiles

![Screenshot of my setup](./Pictures/desktop_screenshot.png)

## Introduction

This repository contains my personal dotfiles, which are the customization files that I use to personalize my system. These dotfiles allow me to quickly set up a new machine with my preferred settings and tools.

This setup was inspired by the blog post [Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles).

## Repository Contents

- `.bashrc`: Customizes the Bash shell environment
- `.bash_aliases`: Customizes the Bash shell aliases
- `.vimrc`: Configuration for the Vim text editor
- `.config/tmux/tmux.conf`: Configuration for the Tmux terminal multiplexer
- (this list is not complete, I am always adding new things)

## Dependencies

Before setting up these dotfiles, ensure you have the following installed:

- git
- vim
- tmux

## Installation Guide

Run this script:
   ```
   curl -fsSL https://raw.githubusercontent.com/alaidine/Dotfiles/main/.local/bin/install.sh | bash
   ```

## Contributing

If you'd like to contribute to these dotfiles, please:

1. Fork the repository
2. Create a new branch for your feature
3. Commit your changes
4. Push to your fork and submit a pull request

## License

This project is licensed under the MIT License.
