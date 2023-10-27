= Problem 0002

== Problem
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


== Solution

=== Variables
- Let $l$ be the inclusive upper limit for even values of $j$.
- Let $s$ be the sum of all even-valued terms.
- Let $i$ be the previous term in the Fibonacci sequence.
- Let $j$ be the current term in the Fibonacci sequence.
- Let $k$ be the next term in the Fibonacci sequence.

=== Approach
Initially, $s$ is equal to 0, $i$ is equal to 1 and $j$ is equal to 2, as specified by the problem.

Each value of $j$ will be added to $s$ if $j mod 2$ is equal to 0 ($j$ is even).

To generate the next term in the Fibonacci sequence ($k$), $i$ and $j$ will be summed. Then, $i$ will be set to the value of $j$, and $j$ will be set to the value of $k$.

The program will continue generating terms of the Fibonacci sequence until a value of $j$ is calculated that is greater than $l$.

=== Code
The code to produce this solution is in `solution.py`.

=== Output
For $l = 4 dot 10^6$, the program outputs 4613732, which is correct.