import math


def calc_x(z):
    x = z ** 2 + 3
    return x


def calc_y():
    y = math.sin(4)
    return y


def calc_f(x, y):
    return x + y


result = calc_f(calc_x(2), calc_y())     # x(2); y(3);
print(result)
