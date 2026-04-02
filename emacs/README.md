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

- Globally truncates lines in **all** buffers and file types (no soft-wrapping)
- Optimized for bioinformatics work

## Usage

- Lines are truncated automatically in every file — no special file type needed
- Restart Emacs if changes don't take effect
