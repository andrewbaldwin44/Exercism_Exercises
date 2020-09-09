def is_armstrong_number(number):
    sum = 0
    integers = list(str(number))

    for item in integers:
        sum += int(item)**len(integers)

    if sum == number:
        return True
    else:
        return False
