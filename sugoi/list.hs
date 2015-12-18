boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x ]
length' xs = sum [1| _ <- xs]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
let rightTriangles = [(a,b,c)|c <- [1..10], a <- [1..c], b <- [1..a], a+b+c == 24, a^2 + b^2 == c^2]
