s = 0
i = 1
j = 2
k = 0

while j < 4_000_000:
    if (j % 2 == 0):
        s += j

    k = i + j

    i = j
    j = k

print(s)
