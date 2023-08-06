
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

## TODO

- Adapt circuit to have trimpot for Rs
- Select and order components. Particularly JFETs
- Make and test initial circuit
- Measure gain, noise levels

## Open questions

- Does this two-step amplified design work give good quality? First JFET buffer, then external preamp?
Test the circuit externally.
Test how copper shielding affects.
Over just the piezo. Over piezo, and PCB separate. Over piezo and PCB integrated.

- How is sound pickup influenced by mounting PCB onto the piezo?

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

## Learnings

### Direct soldering

06.08.2023. Tested soldering a PCB board with castellated holes directly to a PCB.
Worked quite nicely. Heated the PCB castellated first, then feed solder on pad, then towards piezo.
Used 280 deg C soldering iron, was sufficient.


## Components

#### SMD JFET for audio

SOT23 DSG: Gate on tip

- 2SK3557 - SOT23 DSG
- MMBF4416A - SOT23 DSG
- MMBF5484/MMBF5485/MMBF5486 - SOT23 DSG. 5484 has lowest VGS_off - good
- MMBFJ309/MMBFJ310 - SOT23 DSG. 309 has lowest VGS_off - good
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

## References

### Elliot Sound: JFET amplifier design
https://sound-au.com/articles/jfet-design.htm#s3

Most important JFET parameters:

- the gate-source cutoff voltage VGS (off). Aka  'pinch-off' voltage (VP).
- and the maximum current with zero gate voltage (IDSS).

Must in practice be measured.
Large amount of unit variation in these. 
Shows a practical test circuits to measure the key parameters.

Lots of discussion on how to set bias point (via selecting R_s).
Recommends a trim-pot for R_s.

The lower the supply voltage, the more accurate the biasing needs to be.

## Bias point and component selection

In this applicaion there will also be some external variation in R_s on,
so the circuit must be robust to a reasonable range of these.
Complicates testing of the bias point. 

In practice JFET selection is likely to be critical.
And it is quite likely that JFETs must be measured/binned.

=> this design is only ideal when direct operation as "elecret" mic is needed.
If an external power source is acceptable, then a op-amp based charge amplifier is better.

Gain adjustment has to be primarily done by selecting another JFET.
The other option is to use the resistive divider on the input,
but this reduces SNR. 

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
