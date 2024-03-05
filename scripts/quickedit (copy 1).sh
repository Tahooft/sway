#!/bin/bash

echo "File to edit or hit <Enter> for exit"
echo ""
echo "  0)This script"
echo "  1)Sway config"
echo "  2)Waybar config"
echo "  3).bashrc"
echo "  4)Ly config"
echo "  5)mpvtube.sh"
echo "  x)Exit"
echo ""


# read -n 1
read n 
case $n in
  0) nvim "$HOME/.config/sway/scripts/quickedit.sh";;
  1) nvim "$HOME/.config/sway/config";;
  2) nvim "$HOME/.config/waybar/config";;
  3) nvim "$HOME/.bashrc";;
  4) sudo nvim "/etc/ly/config.ini";;
  5) nvim "$HOME/.config/sway/scripts/mpvtube.sh";;
  x) exit;;
  *) echo "invalid option";;
esac
