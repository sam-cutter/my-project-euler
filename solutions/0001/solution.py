n = 1
k = 1000
m = []
s = 0

while True:
    m_initial_length = len(m)

    o = n * 3
    if (o < k):
        m.append(o)

    o = n * 5
    if (o < k):
        m.append(o)

    if (len(m) == m_initial_length):
        break

    n += 1

s = sum(set(m))
print(s)
