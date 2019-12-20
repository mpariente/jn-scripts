fallocate -l 8G /mnt/8GB.swap
mkswap /mnt/8GB.swap
swapon /mnt/8GB.swap
echo "/mnt/8GB.swap  none  swap  sw 0  0" | tee -a /etc/fstab
