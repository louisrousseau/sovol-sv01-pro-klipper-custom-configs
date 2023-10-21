# Sovol SV01 Pro Klipper 3D Printer Configuration Files

Includes configuration files for a "Klipperized" but otherwise stock Sovol SV01 Pro filament 3D printer as well as settings for certain modifications such as:

- Sovol's bi-metal heat break upgrade,
- Sovol SV06 Plus extruder and hot end swap,
- TMC2208 UART mod,
- fryc88's stock screen with Klipper (https://github.com/fryc88/klipper-sv06plus-screen)

## Usage

Fork or clone this repo somewhere on your Klipper host and add `[include]` statements with relative paths in your instance's `printer.cfg`, see the included `sample_printer.cfg` for an example.

If you'd like to track updates with Moonraker's Update Manager, KAMP's technique adapted below works well.


1. `ssh` into your Klipper device and execute the following commands:
   ```bash
    cd ~
    
    git clone https://github.com/louisrousseau/sovol-sv01-pro-klipper-custom-configs.git
    
    ln -s ~/sovol-sv01-pro-klipper-custom-configs printer_data/config/sv01pro
    ```
    > **Note:**
    > This will change to the home directory, clone the repo, create a symbolic link of the repo to your printer's config folder.
    > 
    > It is also possible that with older setups of klipper or moonraker that your config path will be different. Be sure to use the correct config path for your machine when making the symbolic link.

2. Open your `moonraker.conf` file and add this configuration:
   ```yaml
    [update_manager sovol-sv01-pro-klipper-custom-configs]
    type: git_repo
    channel: dev
    path: ~/sovol-sv01-pro-klipper-custom-configs
    origin: https://github.com/louisrousseau/sovol-sv01-pro-klipper-custom-configs.git
    managed_services: klipper
    primary_branch: main
    ```

    > **Note:**
    > Whenever Moonraker configurations are changed, it must be restarted for changes to take effect.

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
