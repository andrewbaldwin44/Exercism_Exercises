RULES = (
    (3, "Pling"),
    (5, "Plang"),
    (7, "Plong")
)

def convert(number):
    return "".join(
        drop
        for factor, drop in RULES
        if number % factor == 0
    ) or str(number)
