def slices(series, length):
    series_length = len(series)

    if length > series_length or length <= 0 or not series:
        raise ValueError("The series or slice length is invalid!")

    return [''.join(series[i:i + length]) for i in range(series_length - length + 1)]
