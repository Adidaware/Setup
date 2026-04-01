
#!/bin/bash

# Mac Setup Script
# This script automatically adds all aliases and functions to ~/.zprofile

echo "=========================================="
echo "Mac Setup Script"
echo "=========================================="
echo ""

# Check if zprofile exists
if [ ! -f ~/.zprofile ]; then
  echo "Creating ~/.zprofile..."
  touch ~/.zprofile
fi

echo "Adding aliases and functions to ~/.zprofile..."
echo ""

# Add GVM alias
if ! grep -q "alias gvm=" ~/.zprofile; then
  echo "Adding gvm alias..."
  echo "" >> ~/.zprofile
  echo "# GCloud VM alias" >> ~/.zprofile
  echo "alias gvm='gcloud compute ssh aditya@adi-machine --zone us-central1-f'" >> ~/.zprofile
else
  echo "gvm alias already exists, skipping..."
fi

# Add DFCI alias
if ! grep -q "alias dfci=" ~/.zprofile; then
  echo "Adding dfci alias..."
  echo "alias dfci='cd /Users/aditya/Desktop/DFCI'" >> ~/.zprofile
else
  echo "dfci alias already exists, skipping..."
fi

# Add storage alias
if ! grep -q "alias storage=" ~/.zprofile; then
  echo "Adding storage alias..."
  echo "alias storage='cd /Volumes/aditya4T'" >> ~/.zprofile
else
  echo "storage alias already exists, skipping..."
fi

# Add SSH Agent
if ! grep -q "ssh-agent" ~/.zprofile; then
  echo "Adding SSH agent setup..."
  echo "" >> ~/.zprofile
  echo "# SSH Agent Setup" >> ~/.zprofile
  echo "eval \"\$(ssh-agent -s)\" > /dev/null 2>&1" >> ~/.zprofile
  echo "ssh-add ~/.ssh/google_compute_engine 2>/dev/null" >> ~/.zprofile
else
  echo "SSH agent already configured, skipping..."
fi

# Add vmdownload function
if ! grep -q "vmdownload()" ~/.zprofile; then
  echo "Adding vmdownload function..."
  echo "" >> ~/.zprofile
  echo "# Download files from VM" >> ~/.zprofile
  echo "vmdownload() {" >> ~/.zprofile
  echo "  if [ \$# -eq 0 ]; then" >> ~/.zprofile
  echo "    echo \"Usage: vmdownload <remote_path> [local_path]\"" >> ~/.zprofile
  echo "    return 1" >> ~/.zprofile
  echo "  fi" >> ~/.zprofile
  echo "  " >> ~/.zprofile
  echo "  local remote_path=\"\$1\"" >> ~/.zprofile
  echo "  local local_path=\"\${2:-.}\"" >> ~/.zprofile
  echo "  " >> ~/.zprofile
  echo "  echo \"Downloading from VM: \$remote_path\"" >> ~/.zprofile
  echo "  gcloud compute scp --zone us-central1-f \\" >> ~/.zprofile
  echo "    \"aditya@adi-machine:\$remote_path\" \\" >> ~/.zprofile
  echo "    \"\$local_path\" \\" >> ~/.zprofile
  echo "    --recurse" >> ~/.zprofile
  echo "  " >> ~/.zprofile
  echo "  echo \"Download complete!\"" >> ~/.zprofile
  echo "}" >> ~/.zprofile
else
  echo "vmdownload function already exists, skipping..."
fi

echo ""
echo "=========================================="
echo "Reloading shell configuration..."
echo "=========================================="
source ~/.zprofile

echo ""
echo "✅ Setup complete!"
echo ""
echo "Test your aliases:"
echo "  gvm       - SSH to GCloud VM"
echo "  dfci      - Go to DFCI folder"
echo "  storage   - Go to external drive"
echo "  vmdownload /path/on/vm ~/local/path  - Download from VM"
echo ""
