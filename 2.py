import math


def calc_x():
    x = (math.cos(5))**2
    return x


def calc_y(z):
    y = z**3 - 1
    return y


def calc_f(x, y):
    return x + y


result = calc_f(calc_x(), calc_y(3))     # x(2); y(3);
print(result)
