#!/bin/bash
sudo paccache -rk2
sudo pacman -Rns $(pacman -Qdtq) 2>/dev/null
sudo journalctl --vacuum-time=7d
rm -rf ~/.local/share/Trash/*
