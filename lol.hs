-- Sieve of Eratosthenes
sieve :: [Int] -> [Int]
sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
sieve [] = []

-- Generate a list of prime numbers
primes = sieve [2 ..]
