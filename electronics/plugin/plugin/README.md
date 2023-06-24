
# Plug-in-power

Contains a single JFET buffer, designed to be powered from "Plug in power" (PIP) at 3-5 volts.
Very similar to off-the-shelf electret microphone modules are done.
Can be directly plugged into a portable recorder, PC, phone or laptop accepting mic-level input and supporting PIP.
Or use preamps or adapters designed for electret microphones.

Board designed to be soldered directly to piezo element, using castellated edge holes.
The assembly should then protected mechanically using silicone etc,
and be shielded completely using copper tape.
And potentially coated with plastidip et.c. to be fully waterproof.
Output is a NN cm long cable with 3.5 mm TRRS male.

## Open questions

- Does direct soldering
- Is the two-step interface of JFET buffer, then external preamp give good quality?

Alternative fully-integrated design.
Put everything needed also for P48V phantom power and 9V.
Then just have different sets of wires coming out for different connectivity options.


## Challenges

Multiple usage scenarios with different expectations of connection

- Instrument. 9V battery + female jack
- XLR with phantom power
- Portable recorder. Plug-in-power. Though some also have XLR or TRS

Different usage scenarious may have different input level,
and require different gain

- Ambient listening. High sensitivity desired
- Stringed/plucked instruments. Guitar, kaliba, piano etc. Relatively loud
- Percussive instruments. Very loud / high energy


## Components

#### SMD JFET for audio

SOT23 DSG: Gate on tip

- 2SK3557 - SOT23 DSG
- MMBF4416A - SOT23 DSG
- MMBF5484/MMBF5485/MMBF5486 - SOT23 DSG
- MMBFJ309/MMBFJ310 - SOT23 DSG
- MMBF4393LT1G - SOT23 DSG

Very expensive

- sst310

Discontinued

- MMBF4393
- Philips bf512
- MMBF4416
- BF256B
- BF862
- BF556

## Accessories

#### XLR converter

PIP 3.5mm TRS to XLR phantom power

- Rode VXLR+
https://www.thomann.de/be/rode_vxlr_416774.htm
- Movo FXLR-PRO 
- Boya 35C-XLR

#### Battery box

Ideally with jack socket (female).
For guitar amp etc connection.

Not so much completely ready??

- MC-401 condenser mic mixer. 4 in, 1 out
- MC33202 Dynamic Condenser Microphone Preamplifier. 1 elecret input 
- Soundman A3 adapter?
- Soundprofessionsals SP-SPSB-1
https://soundprofessionals.com/product-category/microphone-power-modules-battery-modules/

There are a bunch of ready-made electret amplifier boards

- 3V/5V/12V Input MAX9812 Electret Microphone Amplifier
- LM358

Would need to add minijack input, jack output, and 9V battery connector.
