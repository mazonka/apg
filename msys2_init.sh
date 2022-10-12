#!/bin/sh

# https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20200903.exe

#pacman -Syu --noconfirm
pacman -S --noconfirm git
pacman -S --noconfirm mingw-w64-x86_64-gcc
pacman -S --noconfirm mingw-w64-x86_64-cmake
pacman -S --noconfirm autoconf
pacman -S --noconfirm make
pacman -S --noconfirm tar
pacman -S --noconfirm lzip
pacman -S --noconfirm dos2unix

#pacman -S --noconfirm mingw-w64-x86_64-ffmpeg

# need for mpir
# pacman -S mingw-w64-x86_64-yasm