VERSES = \
(
    ("first", "and a Partridge in a Pear Tree."),
    ("second", "two Turtle Doves, "),
    ("third", "three French Hens, "),
    ("fourth", "four Calling Birds, "),
    ("fifth", "five Gold Rings, "),
    ("sixth", "six Geese-a-Laying, "),
    ("seventh", "seven Swans-a-Swimming, "),
    ("eighth", "eight Maids-a-Milking, "),
    ("ninth", "nine Ladies Dancing, "),
    ("tenth", "ten Lords-a-Leaping, "),
    ("eleventh", "eleven Pipers Piping, "),
    ("twelfth", "twelve Drummers Drumming, ")
)

def recite(start_verse, end_verse):
    return [
        "On the %s day of Christmas my true love gave to me: %s" % (
            VERSES[i - 1][0],
            ''.join([
                VERSES[x][1]
                if i > 1 else VERSES[0][1][4:]
                for x in reversed(range(i))
            ])
        )
        for i in range(start_verse, end_verse + 1)
    ]
