sq x = x * x

pyth' a b = a * a + b * b
pyth (a, b) = a * a + b * b
len vec = sqrt (pyth vec)
lenSeg ((x, y), (x', y')) = sqrt $ pyth (x' - x, y' - y)
getThePoint(_, pt, _) = pt
flop (a, b) = (b, a)
makeSegment p1 p2 = (p1, p2)
center (x, y) (x2, y2) = ((x + x2) / 2 , (y + y2) /2)

main = print $
    center (1,2) (3,4)