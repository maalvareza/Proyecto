from math import sin, pi
from numpy import arange

s = ""

for t in (arange(0,1, 1/44100/2)):
    bits = hex(int(32767 * sin(2*pi*440*t) + 32767)) + hex(int(32767 * sin(2*pi*1000*t) + 32767))
    while len(bits) < 10:
        bits = "0" + bits
    s = s + bits + "\n"

open("audio.mem", "w+").write(s.replace("0x","").upper())