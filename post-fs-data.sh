#!/system/bin/sh
sleep 5
/system/bin/ro-backup-keys
nohup /system/bin/ro-adb-lock >> /tmp/ro-adb.log 2>&1 &
