#!/sbin/sh
ui_print "Installing RO ADB Lock Protection..."
set_perm 755 $MODPATH/system/bin/ro-adb-lock u:object_r:system_file:s0
set_perm 755 $MODPATH/system/bin/ro-backup-keys u:object_r:system_file:s0
ui_print "[RO] Installation complete!"
