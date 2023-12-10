#!/bin/bash
echo "Stopping Klipper service - needs elevated privileges"
sudo service klipper stop
pushd ~/klipper

make clean # KCONFIG_CONFIG=config.spider
make menuconfig # KCONFIG_CONFIG=config.spider
make # KCONFIG_CONFIG=config.spider
read -p "Firmware built, please check above for any errors. Press [Enter] to continue flashing, or [Ctrl+C] to abort"

./scripts/flash-sdcard.sh /dev/serial/by-id/usb-1a86_USB_Serial-if00-port0 creality-v4.2.2
read -p "You must manually power cycle the printer for this firmware to flash. Shutting down Klipper host.\nFirmware flashed, please check above for any errors. Press [Enter] to continue, or [Ctrl+C] to abort"

#make clean KCONFIG_CONFIG=config.rpi
#make menuconfig KCONFIG_CONFIG=config.rpi

#make KCONFIG_CONFIG=config.rpi
#read -p "RPi firmware built, please check above for any errors. Press [Enter] to continue flashing, or [Ctrl+C] to abort"
#make flash KCONFIG_CONFIG=config.rpi
#echo "Starting Klipper service"
#sudo service klipper start
#popd
sudo shutdown now