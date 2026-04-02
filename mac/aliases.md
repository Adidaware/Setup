# Mac Aliases

## Homebrew Initialization

**What it does:** Initializes Homebrew environment (PATH, MANPATH, etc.) on Apple Silicon/Intel Macs

**Command:**
```bash
eval "$(/opt/homebrew/bin/brew shellenv)"
```

**How to add:**
1. Open `~/.zprofile`
2. Add the line above (typically at the top)
3. Run: `source ~/.zprofile`

---

## Python 3.11 PATH

**What it does:** Puts Python 3.11 first in PATH so the system uses it by default

**Command:**
```bash
# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
```

**How to add:**
1. Open `~/.zprofile`
2. Add the lines above
3. Run: `source ~/.zprofile`
4. Test: `python3 --version`

---

## GCloud VM Access

### `gvm` - Connect to adi-machine
**What it does:** SSH into your GCloud VM

**Command:**
```bash
alias gvm='gcloud compute ssh aditya@adi-machine --zone us-central1-f'
```

**How to add:**
1. Open `~/.zprofile`
2. Add the line above
3. Run: `source ~/.zprofile`
4. Test: `gvm`

---

## Quick Folder Access

### `dfci` - Go to DFCI folder
**What it does:** Quick cd to your DFCI work folder

**Command:**
```bash
alias dfci='cd /Users/aditya/Desktop/DFCI'
```

### `ehda` - Go to 4TB external drive
**What it does:** Quick access to external storage

**Command:**
```bash
alias ehda='cd /Volumes/aditya4T'
```

### `storage` - Go to 4TB external drive (alternate)
**What it does:** Alternate alias for quick access to external storage

**Command:**
```bash
alias storage='cd /Volumes/aditya4T'
```

