BASHRC_DIR=~/.bashrc.d

if [ -d "$BASHRC_DIR" ]; then
  for file in $BASHRC_DIR/*.bashrc; do
    if [ -r "$file" ]; then
      . $file
    fi
  done
  unset file
fi
