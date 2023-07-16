#!/sbin/sh

SKIPUNZIP=1
ASH_STANDALONE=1

if [ "$BOOTMODE" ! = true ] ; then
  abort "Error: Please install in Magisk Manager or KernelSU Manager"
elif [ "$KSU" = true ] && [ "$KSU_VER_CODE" -lt 10670 ] ; then
  abort "Error: Please update your KernelSU and KernelSU Manager or KernelSU Manager"
fi

if [ "$KSU" = true ] && [ "$KSU_VER_CODE" -lt 10683 ] ; then
  service_dir="/data/adb/ksu/service.d"
else 
  service_dir="/data/adb/service.d"
fi

if [ ! -d "$service_dir" ] ; then
    mkdir -p $service_dir
fi

unzip -qo "${ZIPFILE}" -x 'META-INF/*' -d $MODPATH
if [ -d /data/adb/box_bll ] ; then
  mv /data/adb/box_bll/clash/cache.db /data/adb/box_bll/clash/cache_tmp.db
  cp /data/adb/box_bll/scripts/box.config /data/adb/box_bll/scripts/box.config.bak
  rm -rf /data/adb/box_bll/clash/dashboard/Yacd
  cp -rf $MODPATH/box_bll/* /data/adb/box_bll/
  rm -rf $MODPATH/box_bll
  mv /data/adb/box_bll/clash/cache_tmp.db /data/adb/box_bll/clash/cache.db
  ui_print "- 正在更新..."
  ui_print "- 更新完成..."
  ui_print "- 配置文件box.config已备份"
  ui_print "- 请重新前往config.yaml添加订阅信息 以便后续自动更新..."
else
  mv $MODPATH/box_bll /data/adb/
  ui_print "- 安装中..."
  ui_print "- 首次安装完成后，不要重启"
  ui_print "- 请至data/adb/box_bll/clash/config.yaml添加订阅信息"
  ui_print "- 此模块开关就是实时 启用/关闭 首次安装需重启一次..."
fi

if [ "$KSU" = true ] ; then
  sed -i 's/name=Surfing/name=Surfing/g' $MODPATH/module.prop
fi

mkdir -p /data/adb/box_bll/bin/
mkdir -p /data/adb/box_bll/run/

mv -f $MODPATH/Surfing_service.sh $service_dir/

rm -f customize.sh

set_perm_recursive $MODPATH 0 0 0755 0644
set_perm_recursive /data/adb/box_bll/ 0 0 0755 0644
set_perm_recursive /data/adb/box_bll/clash/proxy_providers/ 0 0 0755 0666
set_perm_recursive /data/adb/box_bll/clash/rule/ 0 0 0755 0666
set_perm_recursive /data/adb/box_bll/scripts/ 0 0 0755 0700
set_perm_recursive /data/adb/box_bll/bin/ 0 0 0755 0700

set_perm $service_dir/Surfing_service.sh 0 0 0700

chmod ugo+x /data/adb/box_bll/scripts/*

for pid in $(pidof inotifyd) ; do
  if grep -q box.inotify /proc/${pid}/cmdline ; then
    kill ${pid}
  fi
done

inotifyd "/data/adb/box_bll/scripts/box.inotify" "/data/adb/modules/box" > /dev/null 2>&1 &
