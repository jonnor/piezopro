

# PiezoPro Mobile preamp

Designed for use with consumer electronics like mobile phone / PC.
And an off-the-shelf piezo module. Either from music store, China online, or using own piezo disc.

# Features

- 3.5 mm input jack for piezo
- 3.5 mm output jack. Line level
- Adjustable gain. 0 to 34 dB?
- Ability to switch on/off
- Rechargable battery. 100 hours + battery life
- USB-C charging port
- Shielded chassis

# Implementation

- Li-ion battery. Cell on JST style connector.
- CMOS opamp
- 3d-print casing. Copper tape for shielding?



# Background

## Opamp choice

CMOS opamps seems to be the way to go.
High impedance. Low power. Low noise. Good gain bandwidth product.

- TI OPA1671. 900 uA consumption
- TI OPA314. 150 uA consumption

## Battery types
Lithium polymer on JST connector.

- 602025, 200 mAh.
- 502035, 400 mAh

On-PCB.

- LIR2450, 100 mAh.

## References


### Metal Marshmellow Pro

Metal marshmellow Pro has 0-34 dB gain.
Has phantom power.

### Metal Marshmellow II

https://metalmarshmallow.com/MM_II.php

Has an internal battery. 10 days battery life. 240 hours.
Charging via micro USB. Charging time 1 hour.
Fixed gain. Multiple variants. From 0 to +34 dB. With +24 dB considered "normal" gain.
Seems to use a standard 20 ish mm piezo disc as the input element.

Says +14 dB is good for loud percussion.
And +24 dB for normal.
And +33 dB for very quiet sounds.

### Metal Marshmellow DIY

Can here see the circuit that is being used in the Pro.

Seems to be a single opamp. Markings are 1D3 ?
According to TI part lookup this could be OPA1671, a CMOS 

With 3-5.5 V range.
With input protection diodes etc.
DC output as well as AC coupled.
Can connect a pot-meter to pins, or fixed SMD resistor to set gain.

### Stompville

https://stompville.co.uk/cart/preamps

Seems to be based on a discrete JFET.
Has +14 dB gain.

Multiple versions. Unbalanced output PCB. Phantom power PCB.
Fully enclosed, alu chassis.

Prices around 50 GPD for PCB.

###

https://www.instructables.com/Hi-Z-Opamp-Piezo-Buffer/

P48 phantom power design, with balanced output.
OPA1642 based.
Has the schematic.
Modern SMD circuit board also available.
https://www.jlielectronics.com/diy-accessories/p48-hi-z-piezo-buffer/ - 35 USD.
Nice standard case in steel with XLR/6.35mm for keeping it in.



### JFET composite amplifier

JFE150 has a complete reference design for a JFET composite amplifier (JFET + single opamp).
With gain up to 60 dB.
Well described, in terms of component choices.

However, a standard CMOS/JFET opamp is probably good enough?
The JFE150 part is a bit exotic.
