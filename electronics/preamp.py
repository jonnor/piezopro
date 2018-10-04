import math

def cutoff(r, c):
    return 1/(math.pi*r*c)

def gain_ni(ri, rf):
    return 1+(rf/ri)

def gain_inv(ri, rf):
    return rf/ri

# TODO: model output voltage limit versus input/zener
# would be cool to express this with constraints:
# functional requirements, standard component series (E12), and prefer existing values in design, or in stock
def main():
    piezo = 25e-9
    first_ri = 12e3
    first_rf =  12e3
    second_ri = 12e3
    second_rf = 27e3

    cap = 1.0e-6
    rin = 10e6
    line_rin = 10e3

    gain = 2*gain_ni(first_ri, first_rf)*gain_inv(second_ri, second_rf)
    inp = cutoff(rin, piezo)
    low = cutoff(first_ri, cap)
    high = cutoff(first_rf, 1e-9)
    out = cutoff(line_rin, 10e-6)

    print(locals())

    assert 8.5 < gain < 11.5
    assert inp < 20.0
    assert low < 30.0
    assert low > 10.0
    assert high > 20e3
    assert high < 100e3
    assert out < 10.0

if __name__ == '__main__':
    main()
