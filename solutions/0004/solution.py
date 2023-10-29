import math

def P():
    for a in range(9, 0, -1):
        for b in range(9, -1, -1):
            for c in range(9, -1, -1):
                n = int(f"{a}{b}{c}{c}{b}{a}")

                if n > 997799: continue

                j = math.ceil(n / 999)
                k = math.floor(n / 100)

                if j < 100: j = 100
                if k > 999: k = 999

                for x in range(j, k):
                    if n % x == 0:
                        return n
                    
    for a in range(9, 0, -1):
        for b in range(9, -1, -1):
            for c in range(9, -1, -1):
                n = int(f"{a}{b}{c}{b}{a}")

                j = math.ceil(n / 999)
                k = math.floor(n / 100)

                if j < 100: j = 100
                if k > 999: k = 999

                for x in range(j, k + 1):
                    if n % x == 0:
                        return n

print(P())