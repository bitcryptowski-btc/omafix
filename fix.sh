#!/bin/bash
echo "=== Omarchy ESP Mount Patch ==="
sed -i 's/mount "$efi_dev"/mount -t vfat "$efi_dev"/' /root/configurator
sed -i 's/mount -o ro "$p" "$tmp_mp"/mount -t vfat -o ro "$p" "$tmp_mp"/' /root/configurator
echo "Patch applied successfully!"
sleep 1
./.automated_script.sh
