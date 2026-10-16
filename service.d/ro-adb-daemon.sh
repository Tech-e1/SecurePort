#!/system/bin/sh
while true; do
    STATE=$(dumpsys window | grep -c "mDreamingLockscreen=true")
    if [ "$STATE" -gt 0 ]; then
        /system/bin/ro-adb-lock lock
    else
        /system/bin/ro-adb-lock unlock
    fi
    sleep 10
done
