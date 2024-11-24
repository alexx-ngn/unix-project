#!/bin/bash

set -e

ISO="$1"
OUT="$(pwd)/out"
WD="$(pwd)/work"

mkdir -p $OUT

7z x -o$WD $ISO -y

cp preseed.cfg $WD
cp post-install.sh $WD
cp post-install.service $WD
cd $WD

sed -i '35s/---/preseed\/file=\/cdrom\/preseed.cfg auto=true priority=critical ---/' $WD/boot/grub/grub.cfg
echo "set timeout=0" >> $WD/boot/grub/grub.cfg

find -follow -type f -print0 | xargs --null md5sum > md5sum.txt

cd $OUT

xorriso -as mkisofs -o "$OUT/$(basename $1)" -isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin \
-c isolinux/boot.cat -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 \
-boot-info-table -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot \
-isohybrid-gpt-basdat $WD
