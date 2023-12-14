# Mark-8 Minicomputer

This repository contains schematics, PCBs, instructions and parts lists for the Mark-8 minicomputer build which can be found at [https://www.youtube.com/watch?v=rFcsYTjo3UA](https://www.youtube.com/watch?v=rFcsYTjo3UA).

## Power Supply

Switching power supply unit that produces +5v and -12v: https://www.digikey.com/en/products/detail/artesyn-embedded-power/LPT102-M/2203686

### Power Conversion Board

The following is the schematic for the power conversion board that converts -12v to -9v and passes through +5v. This board connects directly to the above power supply on the input side and to the Mark-8 backplane on the output side.

<img width="653" alt="Screenshot 2023-12-14 at 12 52 46 PM" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/556f7abd-6658-4ac2-aff0-98889fd8b4e7">

<img width="653" alt="Screenshot 2023-12-14 at 12 53 37 PM" src="https://github.com/kalinchuk/mark_8_minicomputer/assets/1035984/9ec51d69-70be-4264-95fc-43de139e07fd">
