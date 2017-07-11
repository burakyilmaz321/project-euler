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

def binomial_coefficient(n, k):
    nominator = factorial(n)
    denominator = factorial(n - k) * factorial(k) 
    return nominator // denominator

def lattice_path(a, b):
    return binomial_coefficient(a + b, a)