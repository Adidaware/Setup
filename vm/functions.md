# VM Functions

## `cleanup()` - Delete temporary files

**What it does:** Clean up temporary files in /tmp and /mnt/wgs/tmp

**Usage:**
```bash
cleanup
```

**Code to add to ~/.bashrc:**
```bash
cleanup() {
  echo "Cleaning temporary files..."
  rm -rf /mnt/wgs/tmp/*
  rm -rf /tmp/*
  rm -rf /mnt/wgs2/tmp/*
  # Remove emacs backup files:
  find ~ -name '##*' -delete 2>/dev/null
  find ~ -name '*~' -delete 2>/dev/null
  echo "Cleanup complete!"
}
```

**How to add:**
1. Open `~/.bashrc`
2. Paste the function above
3. Run: `source ~/.bashrc`
4. Test: `clean`

---

## SSH Agent Setup (optional)

**What it does:** Caches your SSH passphrase so you don't have to type it every time

**Code to add to ~/.bashrc:**
```bash
# Start ssh-agent if not already running
eval "$(ssh-agent -s)" > /dev/null 2>&1

# Add your key to the agent
ssh-add ~/.ssh/google_compute_engine 2>/dev/null
```
