= Problem 0003

== Problem
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?

== Solution

=== Variables and Functions
- Let $n$ be the integer that should ultimately be factorised into the primes that compose it.
- $P(o)$ returns an array of prime numbers using the Sieve of Eratosthenes method - repeatedly casting out multiples of primes.
    - Let $o$ be the exclusive upper limit for values of terms of $P(o)$.
    - Let $f$ be an array of boolean values which acts as the "sieve".
    - Let $i$ be an integer which represents the position within the sieve.
    - Let $j$ be an integer which is used to represent positions in the sieve which are multiples of $i$.
- $F(m, s)$ factorises an integer.
    - Let $m$ be the integer to be factorised.
    - Let $s$ be an array of prime numbers, where $sqrt(n)$ is the inclusive upper limit for values of terms of $s$.
    - Let $p$ be a term in $s$.

=== Approach
Initially, $n$ is defined as the number to be ultimately factorised. $n$ is passed, along with $P(sqrt(n))$ into the _recursive_ function $F(m, s)$.

$F(m, s)$ iterates through terms of $s$. If the remainder from the division of $m / p$ (where $p$ is the current term of $s$) is 0, $p$ is a _prime_ factor of $m$ (and by extension $n$). $p$ is returned along with the output of $F(m / p, s)$.

This function repeatedly divides by prime numbers until $m$ is a prime number, which is known when either $m$ is equal to $p$, or when $m mod p$ has not output 0 for any term of $s$. At this point, $m$ itself is returned, and the array of prime factors is passed up the function call stack to the top level.

=== Code
The code to produce this solution is in `solution.py`.

=== Output
For $n = 13195$, the program outputs $[5, 7, 13, 29]$, as displayed in the problem text.

For $n = 600851475143$, the program outputs $[71, 839, 1471, 6857]$, with the greatest prime factor being 6857. This is correct.