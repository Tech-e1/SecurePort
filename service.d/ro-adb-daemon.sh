#!/system/bin/sh

# Store the default USB config for restoration
DEFAULT_USB_CONFIG="mtp,adb"  # Adjust this for your device

while true; do
    STATE=$(dumpsys window | grep -c "mDreamingLockscreen=true")
    
    if [ "$STATE" -gt 0 ]; then
        # Device locked
        /system/bin/ro-adb-lock lock
        
        # Disable MTP - force charging only
        CURRENT_USB=$(getprop persist.sys.usb.config)
        if [ "$CURRENT_USB" != "charge" ]; then
            setprop persist.sys.usb.config charge
            log -t RO_adb_lock "MTP disabled (device locked)"
        fi
    else
        # Device unlocked
        /system/bin/ro-adb-lock unlock
        
        # Restore MTP if currently in charge mode
        CURRENT_USB=$(getprop persist.sys.usb.config)
        if [ "$CURRENT_USB" = "charge" ]; then
            setprop persist.sys.usb.config $DEFAULT_USB_CONFIG
            log -t RO_adb_lock "MTP enabled (device unlocked)"
        fi
    fi
    
    sleep 2  # Reduced from 10s for faster MTP response
done
