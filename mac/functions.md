# Mac Functions

## SSH Agent Setup

**What it does:** Caches your SSH passphrase so you don't have to type it every time

**Code to add to ~/.zprofile:**
```bash
# Start ssh-agent if not already running
eval "$(ssh-agent -s)" > /dev/null 2>&1

# Add your key to the agent
ssh-add ~/.ssh/google_compute_engine 2>/dev/null
```

**How to add:**
1. Open `~/.zprofile`
2. Paste the code above
3. Run: `source ~/.zprofile`

---

## `vmdownload()` - Download files from VM

**What it does:** Download files/folders from your VM without typing the full path

**Usage:**
```bash
vmdownload <remote_path> [local_path]
```

**Example:**
```bash
vmdownload /mnt/wgs2/svaba_outputs/run_001/ ~/Desktop/DFCI/
```

**Code to add to ~/.zprofile:**
```bash
vmdownload() {
  if [ $# -eq 0 ]; then
    echo "Usage: vmdownload <remote_path> [local_path]"
    echo "Example: vmdownload /path/on/vm ~/local/path"
    return 1
  fi
    
  local remote_path="$1"
  local local_path="${2:-.}"
  
  echo "Downloading from VM: $remote_path"
  gcloud compute scp --zone us-central1-f \
    "aditya@adi-machine:$remote_path" \
    "$local_path" \
    --recurse
    
  echo "Download complete!"
}
```

**How to add:**
1. Open `~/.zprofile`
2. Paste the function above
3. Run: `source ~/.zprofile`
4. Test: `vmdownload`
