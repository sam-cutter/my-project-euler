= Problem 0004

== Problem
A palindromic number reads the same both ways. The largest palindrome made from the product of two $2$-digit numbers is $9009 = 91 dot 99$.

Find the largest palindrome made from the product of two $3$-digit numbers.

== Solution

=== Variables and Functions
- Let $P()$ be a function which returns the largest palindrome made from the product of two $3$-digit numbers.
    - Let $a$ be an integer.
    - Let $b$ be an integer.
    - Let $c$ be an integer.
    - Let $n$ be an integer, which may be either $5$ digits with the pattern $a$$b$$c$$b$$a$, or $6$ digits with the pattern $a$$b$$c$$c$$b$$a$.
    - Let $x$ be an integer that $n$ is divided by.
    - Let $j$ be the inclusive lower limit for $x$.
    - Let $k$ be the inclusive upper limit for $x$.

=== Approach
Each palindromic number is generated through a nested loop in which values of $a$, $b$ and $c$ are decreased with an increment of $1$. Due to the nature of the formation of $n$, any values of $a$, $b$ or $c$ will generate a palindromic number.

Due to the fact that $n$ is calculated through multiplying two $3$-digit numbers, the maximum value for $n$ is $999 dot 999 = 998001$. The largest $6$-digit palindromic number less than $998001$ is $997799$. Therefore, before any division of $n$, a check of $n <= 997799$ can be made to avoid un-necessary computation.

Since both factors of $n$ must be $3$ digits,
$ 100 <= n/x <= 999 $
Therefore, 
$ n/999 <= x <= n/100 $
In terms of $j$ and $k$, this is shown as
$ j <= x <= k $
Often, the result of $x/999$ or $x/100$ will be a floating point value. Therefore, both of these values must be rounded appropriately. As $j$ is the minimum value for $x$, it must be rounded up. Therefore, $j = ceil(n/999)$. 

$k$ is the maximum value for $x$, so $k = floor(n/100)$.

Sometimes, $k$ will be greater than $999$. _Both_ factors of $n$ must be $3$ digits, so in this case $k$ will be set equal to $999$. Similarly, if $j < 100$, $j$ will be set to $100$.

Now the divisor, $x$, is iterated through from $j$ to $k$. If any values of $x$ divide evenly into $n$, this means that $x$ is one of the factors. We have already confirmed that $x$ is $3$ digits, and that $n/x$ is $3$ digits. Therefore, $n$ is a palindrome that is composed from the product of two $3$-digit numbers. Since the code began with the largest possible values of $n$ and worked downwards, the first valid value of $n$ found is the largest palindrome that can be made from the product of two $3$-digit numbers.

=== Code
The code to produce this solution is in `solution.py`.

=== Output
The code outputs $906609$, which is correct.