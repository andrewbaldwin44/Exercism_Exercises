VERSES = \
{
    1: "and a Partridge in a Pear Tree.",
    2: "two Turtle Doves, ",
    3: "three French Hens, ",
    4: "four Calling Birds, ",
    5: "five Gold Rings, ",
    6: "six Geese-a-Laying, ",
    7: "seven Swans-a-Swimming, ",
    8: "eight Maids-a-Milking, ",
    9: "nine Ladies Dancing, ",
    10: "ten Lords-a-Leaping, ",
    11: "eleven Pipers Piping, ",
    12: "twelve Drummers Drumming, "
}
DAYS = \
{
    1: "first",
    2: "second",
    3: "third",
    4: "fourth",
    5: "fifth",
    6: "sixth",
    7: "seventh",
    8: "eighth",
    9: "ninth",
    10: "tenth",
    11: "eleventh",
    12: "twelfth"
}

def recite(start_verse, end_verse):
    return [
        "On the %s day of Christmas my true love gave to me: %s" % (
            DAYS[i+1],
            ''.join([
                VERSES[end_verse - x]
                if i > 0 else VERSES[1][4:]
                for x in range(end_verse-(i+1), end_verse)
            ])
        )
        for i in range(start_verse-1, end_verse)
    ]
