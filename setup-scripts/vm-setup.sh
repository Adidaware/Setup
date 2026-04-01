#!/bin/bash

# VM Setup Script
# This script automatically adds all aliases and functions to ~/.bashrc

echo "=========================================="
echo "VM Setup Script"
echo "=========================================="
echo ""

# Check if bashrc exists
if [ ! -f ~/.bashrc ]; then
  echo "Creating ~/.bashrc..."
  touch ~/.bashrc
fi

echo "Adding aliases and functions to ~/.bashrc..."
echo ""

# Add outputs alias
if ! grep -q "alias outputs=" ~/.bashrc; then
  echo "Adding outputs alias..."
  echo "" >> ~/.bashrc
  echo "# SVABA outputs quick access" >> ~/.bashrc
  echo "alias outputs='cd /mnt/wgs2/svaba_outputs'" >> ~/.bashrc
else
  echo "outputs alias already exists, skipping..."
fi

# Add cdwgs alias
if ! grep -q "alias cdwgs=" ~/.bashrc; then
  echo "Adding cdwgs alias..."
  echo "alias cdwgs='cd /mnt/wgs2'" >> ~/.bashrc
else
  echo "cdwgs alias already exists, skipping..."
fi

# Add cdhome alias
if ! grep -q "alias cdhome=" ~/.bashrc; then
  echo "Adding cdhome alias..."
  echo "alias cdhome='cd ~'" >> ~/.bashrc
else
  echo "cdhome alias already exists, skipping..."
fi

# Add size alias
if ! grep -q "alias size=" ~/.bashrc; then
  echo "Adding size alias..."
  echo "alias size='ls -lh'" >> ~/.bashrc
else
  echo "size alias already exists, skipping..."
fi

# Add clean function
if ! grep -q "clean()" ~/.bashrc; then
  echo "Adding clean function..."
  echo "" >> ~/.bashrc
  echo "# Clean temporary files" >> ~/.bashrc
  echo "clean() {" >> ~/.bashrc
  echo "  echo \"Cleaning temporary files...\"" >> ~/.bashrc
  echo "  rm -rf /mnt/wgs/tmp/*" >> ~/.bashrc
  echo "  rm -rf /tmp/*" >> ~/.bashrc
  echo "  echo \"Cleanup complete!\"" >> ~/.bashrc
  echo "}" >> ~/.bashrc
else
  echo "clean function already exists, skipping..."
fi

# Add SSH Agent
if ! grep -q "ssh-agent" ~/.bashrc; then
  echo "Adding SSH agent setup..."
  echo "" >> ~/.bashrc
  echo "# SSH Agent Setup" >> ~/.bashrc
  echo "eval \"\$(ssh-agent -s)\" > /dev/null 2>&1" >> ~/.bashrc
  echo "ssh-add ~/.ssh/google_compute_engine 2>/dev/null" >> ~/.bashrc
else
  echo "SSH agent already configured, skipping..."
fi

echo ""
echo "=========================================="
echo "Reloading shell configuration..."
echo "=========================================="
source ~/.bashrc

echo ""
echo "✅ Setup complete!"
echo ""
echo "Test your aliases:"
echo "  outputs   - Go to SVABA outputs"
echo "  cdwgs     - Go to WGS data"
echo "  cdhome    - Go home"
echo "  size      - List with sizes"
echo "  clean     - Delete temp files"
echo ""

# Setup Emacs configuration
if [ ! -d ~/.emacs.d ]; then
  echo "Creating ~/.emacs.d..."
  mkdir -p ~/.emacs.d
fi

if [ ! -f ~/.emacs.d/init.el ] || ! grep -q "toggle-truncate-lines" ~/.emacs.d/init.el; then
  echo "Setting up Emacs configuration..."
  cp ~/emacs/init.el ~/.emacs.d/init.el
else
  echo "Emacs configuration already exists, skipping..."
fi

