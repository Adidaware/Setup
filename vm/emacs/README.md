# Emacs Configuration (VM)

## Setup

Make a directory for Emacs settings:
```bash
mkdir -p ~/.emacs.d
```

Copy the configuration:
```bash
cp ~/emacs/init.el ~/.emacs.d/init.el
```

Or use the automated setup script.

## Files

- `init.el` - Main Emacs configuration
- `bak.init.el` - Backup of previous config

## Features

- Auto-truncate lines for `.bps` and `.vcf` files
- Optimized for bioinformatics work on Linux

## Usage

- Open `.bps` or `.vcf` files - lines will automatically truncate
- Restart Emacs if changes don't take effect
