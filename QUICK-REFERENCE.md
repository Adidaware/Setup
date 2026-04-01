# Quick Reference - All Aliases & Functions

## Mac

### Aliases
- `gvm` - SSH to GCloud VM
- `dfci` - Go to DFCI folder
- `ehda` - Go to external drive

### Functions
- `vmdownload <path> [local_path]` - Download files from VM

### Setup
See `mac/aliases.md` and `mac/functions.md` for details

---

## VM

### Aliases
- `outputs` - Go to SVABA outputs
- `cdwgs` - Go to WGS data folder
- `cdhome` - Go to home directory
- `size` - List with human-readable sizes

### Functions
- `clean()` - Delete temporary files
- `cleanup()` - Same as clean (alternate name)

### Setup
See `vm/aliases.md` and `vm/functions.md` for details

---

## How to use this repo on a new machine:

1. Clone: `git clone <repo-url>`
2. For Mac: Follow `mac/README.md` and `mac/aliases.md`
3. For VM: Follow `vm/README.md` and `vm/aliases.md`
4. Source your shell config: `source ~/.zprofile` (Mac) or `source ~/.bashrc` (VM)
