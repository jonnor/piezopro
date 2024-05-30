
Make into piezo preamplifier board.
Allowing use of any piezo.
Source some decent piezo elements that is tested together.
Provide as a kit.

Externals. Connectors etc

- Piezo input. 3.5 mm audio jack
- Audio output. 3.5 mm audio jack.
- Power. 5.5 mm DC jack
- Gain. 2/3 way switchable button
- LED power indicator
- Power switch?

Accessories:

- 3.5 mm jack to XLR 
- DC jack to 9V battery
- 3.5 mm stereo extension cord

Physical characteristics

- Like an 9V battery. 50 mm x 30 mm x 15
- In-line connections.
Input connector on one side, output connectors other side
- Preferably a way to attach with screws?

DC 5.5 OD socket is 11 mm tall above PCB. Min 15mm tall
3.5 mm audio jack is 12m diameter
DC 5.5 OD jack is 10 mm diameter

PP3 size battery is 48.5 mm × 26.5 mm × 17.5 mm
XLR connector is 70 mm x 19 mm diameter

## Audio connector
https://www.digikey.com/en/products/filter/barrel-audio-connectors/434?s=N4IgjCBcoEwJxVAYygMwIYBsDOBTANCAPZQDaIAzACwBsVcA7CALqEAOALlCAMocBOASwB2AcxABfQjQTQQKSBhwFiZEFQAMcKjA0t2XSLwEjxUkAFYGFxPLRY8hEpHKaAHBTg3C7zzRA%2BHlTB%2BiCc3HxCYpKEYF5UtgpKjqou4NYWMDasYYbGUWaEALQwiVACAK4qzuTeIAjMEub%2BcoIAJtxFYBoQBtwBIBwAnmy43OjYKE1AA

## Power connector
https://www.digikey.com/en/products/filter/barrel-power-connectors/435?s=N4IgjCBcoEwBxVAYygMwIYBsDOBTANCAPZQDaIAzAGxhwUUgC6hADgC5QgDKbATgJYA7AOYgAvoSoBORCBSQMOAsTIgALAAYpamBqasOkbnyGiJ4KQFY1s%2BYryESkcmAoaA7DHchCrjzCofcBgpD0sgsBhNUIiojTgZXxgKNTUIJPh3cOYQdk4eARFxQgBaGFsoPgBXZSdycMIZRjEWoA

## Switches
https://www.digikey.com/en/products/filter/slide-switches/213?s=N4IgjCBcoGwJxVAYygMwIYBsDOBTANCAPZQDaIALAAxwUBMVIAuoQA4AuUIAyuwE4BLAHYBzEAF9CYAMyNoIFJAw4CxMpSoBWAOxVtIQtR0MDGzXAAcdU9OoUYFG9WnaEhrXBj6WIDl16CohKEALTW8or8AK6qJJDkmqYITOKSIDCIIAIAJlwhYFQQbJyQIKbsAJ6suFzo2CipQA

# Existing

Guitar piezo/ceramic preamp/amplifiers

## EQ-7545R

Approx 7 USD from China
Belcat branded 25 USD
4 band EQ and volume control.
For building into guitar
9V battery holder
2.5mm female socket internal for piezo input
6.35 mm female socket for audio output

https://www.gear4music.no/no/Gitar-and-Bass/Belcat-EQ-7545-4-bands-Aktiv-Preamp/AV8

## Radial Stagebug SB-4
DI box for piezo
1000 NOK
48 V phantom power
https://www.gear4music.no/no/PA-DJ-and-belysning/Radial-StageBug-SB-4-Active-Piezo-DI-Box/V6S

Provides full specifications
Tilsvarende inngangsstøy: -101dBu
Støy gulv: -97dBu 

## Casing

Light enough to work with double sided tape
Optional mounting bracket

Can easily become the most expensive part
Should be rugged enough to have good price
Stock plastic with cutouts?
Aluminum (or plastic) profile with custom sides

https://www.hammfg.com/electronics/small-case/extruded/1455
might be hard to find small enough
want ideally 5 mm tall

G2AA DIY Aluminum Case Electronic Project PCB Instrument Box 45x45x18.5mm
23x44x60mm PCB Junction Box Metal Aluminum Cooling Box DIY

3d-printed?
Could one use texturing etc to make it look good?

https://www.romanreiner.com/creating-textures-for-3d-printing/
Texturing using displacement map
https://grabcad.com/tutorials/how-to-3d-texture-your-parts-for-fdm-printing-using-solidworks-2019
https://www.cati.com/blog/2019/06/how-to-quickly-add-texture-to-fdm-3d-prints-in-solidworks/
Triangular
Bowtie
Can be done in Blender?

If the part is small and flat enough, maybe just a sticker on top will make it look OK

Can one make the price good


## Usecases

- Drums/percussion
- Guitar. Acoustic/electric
- Violin

## Output

Ready to be used with

- Guitar amplifier
"instrument level"
Like an Active DI box.
- Phone/tablet/computer
Using the microphone input
Will need a 9V battery
- XLR audio interface
Either a mixer or USB audio soundcard
"mic level"

## Distributors

- Thomann
- Gear4music

## Configuration

- Power input source
Between phantom and 
Maybe auto-switch instead?
Prefer phantom power where present

- Gain / output level.
Some instruments might be very loud
Some piezos might be very loud
Continiously adjustable. Potmeter
Or couple of steps. 10,20db pad

- High pass filter
Need to avoid handling noise etc
Can be a lot of energy in the low-end
Maybe a switchable filter
Generally better to use an EQ

- Low pass filter
Not so important where it is
Better to use an EQ


# Testing method

## Real-world test
Place on some instrument.
Compare with other piezos.

On acoustic guitar.

## Measurements wrt reference

Need a reference equipment with known response.
Either linear or just well specified

Probably not so important in practice

## Main characteristics

- Signal to Noise ratio
Higher signal level usually beneficial.
Since there is also input noise
- Frequency response
Want low freq dropoff to avoid/reduce handling noise
High dropoff outside hearable range
- Distortion

- Softstart. No pop on power on/off

## Piezo resonance

Piezos have natural resonances.
Depends primarily on size of element
The height of peak proably also depends on material around piezo, and how it is mounted
Some manufacturers specify it
Might

# References

## Line levels

https://www.plaiddogrecording.com/lesson-2

Line-level. Balanced or unbalanced compatible.

    Microphone Level = -58 dBu to +2.2 dBu = 1 millivolt to 1 volt
    Instrument Level = -17.7 dBu to +7 dBu = .1 volt to 1.736 volts
    Line Level = -4.8 dBu to +4 dBu = .447 volts to 1.228 volts
    Speaker Level = +7 dBu to +30 dBu and above = 1.736 volts to 24.5+ volts

While the values for these levels can vary and overlap quite a bit, the average levels (references) are around here:

    Mic Level = -30 dBu = 24 mV
    Instrument Level = 0 dBu = .775 V
    Line Level = +4 dBu = 1.228 V
    Speaker Level = +14.26 dBu = 4 V

Instrument level and line level nearly the same.
Mic level considerably different.

Can typical XLR mic preamps handle instrument or line level?

Behringer Xenix. Max level +10 dBu, yes

## Piezo levels

What are the levels the piezo produces under the range of usecases?

NOTE: may depend the buffer being used.
Baseline: JFET unity-gain opamp

Instrument usage

- Guitar. Electric vs acoustic. Soft vs hard playing. High vs low strings.
- Kalimba. Soft vs hard playing
- Drums. Electronic pad
- Piano.

Sound installation

- Bridge with someone walking on it
 Or just the

Overload conditions

- Drop piezo on floor
- Hit with finger
- Hit with hammer

