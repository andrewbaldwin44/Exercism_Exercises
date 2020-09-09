def classify(number):
    if number <= 0:
        raise ValueError("Input must be a positive integer!")

    sum, i = 0, 1

    while i <= number / 2:
        if number % i == 0:
            sum += i

        i += 1

    if sum == number:
        return "perfect"
    if sum > number:
        return "abundant"
    if sum < number:
        return "deficient"
