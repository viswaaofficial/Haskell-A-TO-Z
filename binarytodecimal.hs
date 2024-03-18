-- Convert binary to decimal

conv :: Int -> Int
conv n = if n==0 then 0 else bindec n 0 0

bindec n dec inc = if n==0 then dec else bindec (n `div` 10) (dec + ((n `mod` 10)*(2^inc))) (inc + 1)
