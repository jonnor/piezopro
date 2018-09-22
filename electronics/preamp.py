import math

def cutoff(r, c):
    return 1/(math.pi*r*c)

def gain_ni(ri, rf):
    return 1+(rf/ri)

# TODO: model output voltage limit versus input/zener
# would be cool to express this with constraints:
# functional requirements, standard component series (E12), and prefer existing values in design, or in stock
def main():
    piezo = 25e-9
    ri = 1.8e3
    rf =  6.8e3
    gain = 2*gain_ni(ri, rf)
    inp = cutoff(10e6, piezo)
    low = cutoff(ri, 10e-6)
    high = cutoff(rf, 2.2e-9)

    print(locals())

    assert 9 < gain < 11
    assert inp < 20.0
    assert low < 20.0
    assert high > 20e3
    assert high < 100e3

if __name__ == '__main__':
    main()
