

import math

"""
pip install --user git+https://github.com/pointhi/kicad-footprint-generator
"""
import KicadModTree
from KicadModTree import *

def circle_equidistant(radius, holes, angular_offset=0):

    for hole in range(holes):
        angle = hole*math.pi*2/holes
        r = radius
        p = angular_offset
        x, y = math.sin(angle+p) * r, math.cos(angle+p) * r
        yield x, y


def viashield(shield_radius, name='viashield', hole_size=0.3, pad_size=0.6, pad_margin = 0.05):

    footprint_name = name

    # init kicad footprint
    kicad_mod = Footprint(footprint_name)
    kicad_mod.setDescription("A example footprint")
    kicad_mod.setTags("piezopro")

    # set general values
    kicad_mod.append(Text(type='reference', text='REF**', at=[shield_radius + 10, 1], layer='F.SilkS'))
    kicad_mod.append(Text(type='value', text=footprint_name, at=[shield_radius + 10, -1], layer='F.Fab'))

    # create silscreen
    #kicad_mod.append(RectLine(start=[-2, -2], end=[5, 2], layer='F.SilkS'))

    # create courtyard
    #kicad_mod.append(RectLine(start=[-2.25, -2.25], end=[5.25, 2.25], layer='F.CrtYd'))

    def Via(x, y, number):
        layers = ['*.Cu', 'B.Mask']
        return Pad(number=number, type=Pad.TYPE_THT, shape=Pad.SHAPE_CIRCLE,
                    at=[x, y], size=[pad_size, pad_size],
                    drill=hole_size, layers=layers)

    # create pads
    pin_number = 1 # everything should be connected together
    spacing = pad_size + pad_margin
    ring_distance = spacing/3
    circumference = math.pi*2*shield_radius
    holes = int(math.floor(circumference / spacing))

    for x, y in circle_equidistant(shield_radius, holes):
        kicad_mod.append(Via(x, y, number=1))


    return kicad_mod

def main():

    mod = viashield(12)

    # output kicad model
    file_handler = KicadModTree.KicadFileHandler(mod)
    file_handler.writeFile('electronics/viashield.kicad_mod')

if __name__ == '__main__':
    main()


