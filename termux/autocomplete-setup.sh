pkg update -y
pkg upgrade -y

grep -qxF 'set completion-ignore-case on' ~/.inputrc || echo set completion-ignore-case on | tee -a ~/.inputrc
