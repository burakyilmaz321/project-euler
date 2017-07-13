def memo(func):
    memory = dict()
    def memoize(arg):
        if arg not in memory:
            memory[arg] = func(arg)
        return memory[arg]
    return memoize

@memo    
def factorial(n):
    return 1 if n == 0 else n * factorial(n - 1)

def sum_of_digits(n):
    return sum([int(i) for i in str(n)])

print(sum_of_digits(factorial(100)))
