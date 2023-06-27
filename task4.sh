#!/bin/bash
#paths for dotfile and bashrc
dotfile_path="$HOME/.dotfile"
bashrc_path="$HOME/.bashrc"

timestamp=$(date +"%H:%M:%S") #initialising var

echo "#!/bin/bash" > "$dotfile_path" #writing in dotfile
echo "PS1=\"[${timestamp}] >\"" >> "$dotfile_path" #writing in dotfile
chmod u+x "$dotfile_path" #giving user and execute permission 
echo "if [ -e \"$dotfile_path\" ]; then" >> "$bashrc_path" #if the directory DNE make bashrc file
echo "    source \"$dotfile_path\"" >> "$bashrc_path"  #write the contents of docfile into it
echo "fi" >> "$bashrc_path"
echo "Updated PS1: [${timestamp}]  >"

