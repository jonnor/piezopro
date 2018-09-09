
Piezo module with integrated preamp in fully shielded package.

# Status
Developing first prototype

# TODO

Order first proto

* Finish layout

Assemble/test first

* Order components Farnell
* Order Bitscope Farnell
* Measure voltage range of piezo in typical application.
When attached to PCB. With 10 Mohm load, oscilloscope

Testing assumptions

* PCB stackup retains piezo sensitivity.
Put piezo onto PCB. With glue? Use adhesive tape to attach to instrument.
Measure output level. Compare to without PCB. Compare to coppertape+covertape.
Maybe the bottom should just be piezo+coppertape, sides+top is PCB? Can still look "perfect" from outside.
* PCB stackup is a good way to shield.
Test having just a few (4) connected holes in mid layer (from top/bottom). Can noise get in? 50Hz
Emulate side-plated PCB using copper tape. How much does it improve?
* Frequency response should include resonant peak.
For 27mm element is as low as 4kHz, within fundamentals of piano. 12mm=9kHz. 9mm=18kHz, edge of human hearing.
How pronouced is this peak actually when mounted on instrument?

# Requirements

Electronics

* PCB fits on top of piezo. 20mm diameter
* BOM max 3 USD
* 100 hours++ on 9V battery. Max 2mA avg draw
* Low noise
* Balanced output. But also works with unbalanced inputs
* Line-level output, +4dBU
* 10Hz-100kHz bandwidth
* Reverse polarity protection
* Input overvoltage protection

Mechanics

* Cylindrical
* Fully shielded
* Output: 1/4" TRS female
* Power: 9V battery clip
* 1m cable, soft/flexible

# Sourcing

* Capacitors.
[0.1uF](https://no.farnell.com/w/c/passive-components/capacitors/ceramic-capacitors/smd-ceramic-multilayer-mlcc-capacitors?capacitance=0.1uf&voltage-rating=25v|35v&range=inc-in-stock-grp1&sort=P_PRICE)
[10uF](https://no.farnell.com/w/c/passive-components/capacitors/ceramic-capacitors/smd-ceramic-multilayer-mlcc-capacitors?capacitance=10uf&voltage-rating=6.3v|10v|25v|35v&range=inc-in-stock-grp1&sort=P_PRICE)
* NMOS. [BSS138L](https://no.farnell.com/on-semiconductor/bss138lt1g/mosfet-n-50v-0-2a-sot-23/dp/1431319)
* Diodes [SOD-532](https://no.farnell.com/w/c/semiconductors-discretes/diodes/small-signal-diodes?diode-case-style=sod-523|sod-523f&no-of-pins=2pins|3pins&packaging=cuttape&range=inc-in-stock-grp1|exc-obs&sort=P_PRICE)
*  Zeners [SOD-523](https://no.farnell.com/w/c/semiconductors-discretes/diodes/zener-single-diodes?zener-voltage-vz-typ=3.3v|3.6v|3.9v|4.3v|4.7v|5.1v&diode-case-style=sod-523|sod-523f&no-of-pins=2pins|3pins&packaging=cuttape&range=inc-in-stock&sort=P_PRICE)
* Opamp. [TL062](https://no.farnell.com/search/prl/results?packaging=cuttape&range=inc-in-stock&st=tl062&sort=P_PRICE)
* Piezo [Farnell](https://no.farnell.com/w/c/sensors-transducers/transducers/sensing-transducers/piezo-transducer-elements?external-diameter=27mm|35mm&range=inc-in-stock)

# BOM

* 8 cap. 1kr/stk. 8
* 4 diodes. 0.5kr/stk 2
* 2 opamps. 2.5kr/stk 5
* 1 NMOS. 1 kr/stk 1
* Resitors 2

## Testing

Tough-but-normal conditions

* 3-8 devices
* Plugged into standard mixer with 50m cable
* 9V battery per microphone

Reverse polarity:
Hold battery on wrong way for 10 seconds, plug right way, ensure works OK.

Overvoltage:
Hit piezo with hammer. Ensure performance good afterwards.

Frequency response:
Connect signal generator at input, with capacitor simulating piezo capacitance.
Sweep sinewave, record output, calculate frequency response.

Noise.
Internal noise. No signal. Measure output
Injected noise/interference (on output line, at microphone).
Attempt to inject 50Hz by wire. Lightbubl+dimmer.
Measure without shielding, and with.

## References

Electronics

* [Elliot Sound Products: Balanced Line Driver](http://sound.whsites.net/articles/dwopa3.htm#s10)
* [Elliot Sound Products: High-Z ](http://sound.whsites.net/articles/high-z.html)
* [WikiPedia: Line level](https://en.wikipedia.org/wiki/Line_level). Consumer: -10dBV 0.894 Vpp, Pro: +4dBu 3.472

Shielding

* [Shielding fabric](https://www.aliexpress.com/item/Emf-shielding-Fabric-Signal-Block-Fabric-Military-Nickel-Fabric/32795159060.html)
* [Shielding paint](https://www.stewmac.com/Pickups_and_Electronics/Shielding/Conductive_Shielding_Paint.html)

Simulation

* [ngspice: Using KiCAD as GUI](http://ngspice.sourceforge.net/ngspice-eeschema.html)
* [eCircuitCenter: Basic SPICE opamp model](http://www.ecircuitcenter.com/Circuits/opmodel1/opmodel2.htm)
* [WikiPedia: Piezoelectri sensor](https://en.wikipedia.org/wiki/Piezoelectric_sensor).
Basic model (disregards resonance): Voltage source with a capacitor in series.

# Construction
Alternative production process

* Cup is 3d-printed, CNC milled or injection molded
* If plastic, coated with conductive paint.
* Piezo soldered to PCB
* Wires soldered to PCB
* PCB glued to top, piezo glued to bottom.
* Isolating,conductive tape covering piezo
* Whole thing is potted in PU/epoxy
