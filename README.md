# Sovol SV01 Pro Klipper 3D Printer Configuration Files

Includes configuration files for a "Klipperized" but otherwise stock Sovol SV01 Pro filament 3D printer as well as settings for certain modifications such as:

- Sovol's bi-metal heat break upgrade,
- Sovol SV06 Plus extruder and hot end swap,
- TMC2208 UART mod,
- fryc88's stock screen with Klipper (https://github.com/fryc88/klipper-sv06plus-screen)

## Usage

Fork or clone this repo somewhere on your Klipper host and add `[include]` statements with relative paths in your instance's `printer.cfg`, see the included `sample_printer.cfg` for an example.

## Thanks, acknowledgements, useful links

- Anh Cao on the Sovol Facebook Group
- https://github.com/RundleRomanowicz/Klipper-SV01Pro
- https://github.com/fryc88/klipper-sv06plus-screen
- https://github.com/gbkwiatt/klipper
- https://github.com/d4rk50ul1/klipper-on-android
- https://github.com/clmnsr/Klipper-for-Sovol-SV01-Pro
- https://github.com/bassamanator/Sovol-SV06-firmware/tree/any-printer
- https://github.com/kyleisah/Klipper-Adaptive-Meshing-Purging

## License

GPLv3, see LICENSE for full text.
