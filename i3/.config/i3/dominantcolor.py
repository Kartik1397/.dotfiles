from colorthief import ColorThief
import sys

color_thief = ColorThief(sys.argv[1]);
dominant_color = color_thief.get_color(quality=20)
print('%02x%02x%02x' % dominant_color)
