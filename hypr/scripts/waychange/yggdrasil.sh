#!/bin/bash
pkill waybar
waybar -c $HOME/.config/hypr/component/waybar/ygdrasil/config -s $HOME/.config/hypr/component/waybar/ygdrasil/style.css
# Background color scheme drawn from yggdrasil.jpg or something, orange
