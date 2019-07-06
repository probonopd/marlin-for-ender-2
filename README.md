# Marlin firmware for Creality Ender-2

This builds [Marlin firmware](https://github.com/MarlinFirmware/Marlin) for Creality Ender-2 on [Travis CI](https://travis-ci.com/probonopd/marlin-for-ender-2). The resulting firmware can be downloaded from https://github.com/probonopd/marlin-for-ender-2/releases/continuous.

## Changes

* Stock Marlin boot logo
* `LIN_ADVANCE` enabled
* Optional part cooling fan runs at reduced speed to improve layer adhesion (I am using a [Petsfang](https://www.thingiverse.com/thing:2759439))

Let me know if you would like to see additional changes.

## Flashing with USBASP

* Connect USBASP to 6-pin header, DO NOT connect VCC from the USBASP to the printer. Have the printer powered by its PSU
* Backup the original firmware with `sudo avrdude -p atmega1284p -c usbasp -F -U flash:r:factory.hex:i`.
* Flash this firmware with `sudo avrdude -p m1284p -c usbasp -F -U flash:w:'/home/me/Downloads/Marlin.ino.hex':i`. A bootloader is not needed!
