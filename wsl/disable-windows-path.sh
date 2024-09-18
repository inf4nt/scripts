# add /etc/wsl.conf
# [interop]
# appendWindowsPath = false

sudo grep -q '\[interop\]' /etc/wsl.conf && sudo grep -q 'appendWindowsPath = false' /etc/wsl.conf || echo -e '\n[interop]\nappendWindowsPath = false' | sudo tee -a /etc/wsl.conf

echo 'wsl --shutdown is required'