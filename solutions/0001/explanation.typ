= Problem 0001

== Problem
If we list all the natural numbers below $10$ that are multiples of $3$ or $5$, we get $3$, $5$, $6$ and $9$. The sum of these multiples is $23$. Find the sum of all the multiples of $3$ or $5$ below $1000$.

== Solution

=== Variables
- Let $n$ be a number.
- Let $o$ be the product of $n$ and 3 or 5.
- Let $k$ be the exclusive upper limit for values of of $o$.
- Let $m$ be an array of values of $o$.
- Let $s$ be the sum of the values of unique items of $m$.

=== Approach
Initially, $n$ is equal to 1. At the end of every iteration, $n$ is increased by 1.

For every value of $n$, 2 values of $o$ are calculated. The first value of $o$ is calculated by multiplying $n$ by 3. If $o < k$, then $o$ is appended to $m$. The second value of $o$ is calculated by multiplying $n$ by 5. If $o$ satisfies the equality $o < k$, then $o$ is appended to $m$.

If the length of $m$ is unchanged, this means that no values of $o$ satisfied the equality $o < k$. This means that no subsequent values of $n$ will form values of $o$ which satisfy $o < k$. Therefore, at this point, the iterations should be stopped.

$s$ can be calculated as the sum of the values of unique values of $m$. Only unique values are summed as there will be duplicate values of items of $m$, such as 15, which can be produced when $n = 3$ or $n = 5$.

=== Code
The code to produce this solution is in `solution.py`.

=== Output
For $k = 10$, the program correctly outputs `s = 23`, as specified within the problem text.

For $k = 1000$, the program outputs `s = 233168`, which is correct.