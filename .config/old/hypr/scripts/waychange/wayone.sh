#!/bin/bash
pkill waybar
waybar -c $HOME/.config/hypr/component/waybar/config -s $HOME/.config/hypr/component/waybar/style.css &
# Background color scheme drawn from yggdrasil.jpg or something, orange
