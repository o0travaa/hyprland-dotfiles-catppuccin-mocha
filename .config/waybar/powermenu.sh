#!/bin/bash
choice=$(echo -e "🔒 Lock\n💤 Suspend\n🔄 Reboot\n⏻ Shutdown" | 
         wofi --dmenu --insensitive --prompt "Power Menu" --width 300 --height 200)

case "$choice" in
    "🔒 Lock") hyprlock ;;
    "💤 Suspend") systemctl suspend ;;
    "🔄 Reboot") systemctl reboot ;;
    "⏻ Shutdown") systemctl poweroff ;;
esac
