def is_valid(isbn):
    isbn = list(isbn.replace("-", ""))

    if len(isbn) != 10:
        return False

    if 'X' is isbn[-1]:
        isbn[-1] = 10

    try:
        isbn_sum = sum([int(x) * (i + 1) for (i, x) in enumerate(reversed(isbn))])
    except ValueError:
        return False

    return isbn_sum % 11 == 0
