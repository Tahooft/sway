#!/bin/bash

echo "File to edit or hit <Enter> for exit"
echo ""
echo "  0)This script"
echo "  1).bashrc"
echo "  2)Sway config"
echo "  3)Waybar config"
echo "  4)nvim config"
echo "  5)KnowHow"
echo "  6)mpvtube.sh"
echo "  x)Exit"
echo ""


# read -n 1
read n 
case $n in
  0) nvim "$HOME/.config/sway/scripts/quickedit.sh";;
  1) nvim "$HOME/.bashrc";;
  2) nvim "$HOME/.config/sway/config";;
  3) nvim "$HOME/.config/waybar/config";;
  4) nvim "$HOME/.config/nvim/";;
  5) nvim "$HOME/Documents/KnowHow/Linux/";;
  6) nvim "$HOME/.config/sway/scripts/mpvtube.sh";;
  x) exit;;
  *) echo "invalid option";;
esac
