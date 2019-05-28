# Custom aliases
alias nmap-scan-ports="nmap -F -n"
alias cls="clear"
alias em="ecryptfs-mount-private"
alias eu="ecryptfs-umount-private"
alias h="history_grep"
alias color-selection="zenity --color-selection"
alias yaml2js="python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)'"
alias venv-enable="source ./venv/bin/activate"
alias convert-python-tabs-to-spaces="find -name '*.py' -print | xargs -n 1 sed -i 's/\t/    /g'"

# Mount
alias mount.iso='sudo mount -t iso9660 -o loop'
alias mount.mdf='sudo mount -o loop'
alias mount.mdx='sudo mount -o loop,offset=64'
alias mount.nrg='sudo mount -o loop,offset=307200'
