def memo(func):
    memory = dict()
    def memoize(arg):
        if arg not in memory:
            memory[arg] = func(arg)
        return memory[arg]
    return memoize

@memo
def collatz(n):
    if n == 1:
        return 1
    if n % 2 == 0:
        return collatz(n / 2) + 1
    else:
        return collatz(3 * n + 1) + 1