#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 20834304 cb8f60ac63ab54f15c28c39361a406337eb13fc2 17670144 c52a948f069a03fe19557a5ed2994c70a54e162d
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20834304:cb8f60ac63ab54f15c28c39361a406337eb13fc2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17670144:c52a948f069a03fe19557a5ed2994c70a54e162d EMMC:/dev/block/bootdevice/by-name/recovery cb8f60ac63ab54f15c28c39361a406337eb13fc2 20834304 c52a948f069a03fe19557a5ed2994c70a54e162d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
