
Piezo module with integrated preamp in fully shielded package.

# Status
Developing first prototype

# TODO

Order first proto

* Simulate circuit. Frequency response
* Estimate BOM
* Order signal generator

Assemble/test first

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

# Requirements

Electronics

* PCB fits on top of piezo. 20mm diameter
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

## Testing

* 3-8 devices
* Plugged into standard mixer with 50m cable
* 9V battery per thing

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

GSD. BSS138L

# Construction
Alternative production process

* Cup is 3d-printed, CNC milled or injection molded
* If plastic, coated with conductive paint.
* Piezo soldered to PCB
* Wires soldered to PCB
* PCB glued to top, piezo glued to bottom.
* Isolating,conductive tape covering piezo
* Whole thing is potted in PU/epoxy
