
Piezo module with integrated preamp in fully shielded package.

# Status
Developing first prototype

# TODO

Preamp Revision 2 verify

* Measure frequency response of amplifier with Bitscope
* Measure signal/noise ratio or noise floor.
* Test with 5V power supply
* Test overvoltage on connector. VGND,HOT,COLD

Final revision

* Document test procedure for PCB and/or assembly.

## Questions

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

# Design test

Revision 1. gain. 220k/22k. 10M input.
20mm Murata. Piezo in tin, glued. Lying on top of guitar. 
Measured GND, HOT. on output.
low E string. 80mVpp sustained, 500mVpp attack
G string. 70mVpp sustained, 700mVpp attack
high E string. 70mVpp sustain, 800mVpp attack

Current consumption 0.68 mA.

## Learnings

* Basic circuit works. Both with balanced and unbalanced inputs.
* Using a tin box works well as a shield.
* With microphone level input, signal is too hot.

# Worklog

Rev1: Circuit design verification. 22 hours

* Sept 08. 4 hours. Research exiting designs, initial schematic.
* Sept 09. 4 hours. Part selection and initial layout.
* Sept 09. 1 / 4 hours. Setup simulation in KiCAD.
* Sept 14. 1 hour. Sketching piezo mounts with rim/center attach
* Sept 19. 7 hours. Assembly and testing revision 1 PCB.
* Sept 22. 2 hours. Test overvoltage, calculate new component values

Rev2: Assembly concept verification. 7 hours 

* Oct 4. 4 hours. Update schematic and layout for revision 2. 
* Oct 8. 3 hours. Go through revision 2.
* Oct 3. 1 / 4 hours. Find out how to import artwork in KiCAD


# Requirements

Electronics

* PCB is an enclosure for 20mm piezo. 25mm outer diameter
* BOM max 3 USD
* 100 hours++ on 9V battery. Max 2mA avg draw
* Low noise
* Balanced output. But also works with unbalanced inputs
* Line-level output, +4dBU
* 20Hz-20kHz bandwidth
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

[Octopart BOM](https://octopart.com/bom-tool/TbIQ2Cbo/OKDwL97yteywY4BA)


## Testing

Testing aspects

* PCB design verification
* Enclosure/mount design verification
* Production checks.

Tough-but-normal conditions

* 3-8 microphones
* Plugged into standard mixer with 50m cable
* 1 9V battery per microphone

Reverse polarity:
Hold battery on wrong way for 10 seconds, plug right way, ensure works OK.

Overvoltage:
Hit piezo with hammer. Ensure performance good afterwards.

Frequency response:
Connect signal generator at PCB input, with capacitor simulating piezo capacitance.
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

# Usage ideas

* Guitar. Acoustic, electric, traveller.
* DIY Cigarbox
* CNC mill an electric travel guitar from single piece of wood. Rosewood/maple.
https://www.aliexpress.com/item/Hot-Sale-Custom-Electric-Travel-Guitar-Portable-Style-Rosewood-Fretboard-22-Frets-with-Soft-Bag-can/32803999609.html
* Violin,viola,chello. 
* Double bass. 
* Stomp box

