# Mac Aliases

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
