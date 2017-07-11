def collatz(n, l=0):
    if n == 1:
        return l + 1
    if n%2 == 0:
        return collatz(n/2, l+1)
    else:
        return collatz(3*n+1, l+1)