def factors(value):
    prime_factors = []
    i = 2

    while value > 1:
        if value % i == 0:
            prime_factors.append(i)
            value //= i
        else:
            i += 1

    return prime_factors
