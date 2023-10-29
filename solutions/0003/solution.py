import math

def P(o):
    P_o = []

    f = [True] * (o + 1)

    for i in range(2, o + 1):
        if (f[i]):
            P_o.append(i)

            for j in range(i, o + 1, i):
                f[j] = False

    return P_o

def F(m, s):
    for p in s:
        if (m == p):
            return [m]
        if (m % p == 0):
            return [p] + F(m // p, s)
    else:
        return [m]

n = 600851475143
print(F(n, P(math.isqrt(n))))