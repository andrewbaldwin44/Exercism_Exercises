def sum_of_multiples(limit, multiples):
    return sum({i for i in range(limit) for m in multiples if m and i % m == 0})
