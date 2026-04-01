# Emacs Configuration

## Setup

Make a directory for Emacs settings:
```bash
mkdir -p ~/.emacs.d
```

Copy the configuration:
```bash
cp init.el ~/.emacs.d/init.el
```

Or use the automated setup script in the root directory.

## Files

- `init.el` - Main Emacs configuration
- `bak.init.el` - Backup of previous config

## Features

- Auto-truncate lines for `.bps` and `.vcf` files
- Custom keybindings and settings
- Optimized for bioinformatics work

## Usage

- Open `.bps` or `.vcf` files - lines will automatically truncate
- Restart Emacs if changes don't take effect
