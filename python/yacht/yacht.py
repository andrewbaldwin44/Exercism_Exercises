YACHT = lambda dice: 50 if dice.count(dice[0]) == len(dice) else 0
ONES = lambda dice: dice.count(1)
TWOS = lambda dice: dice.count(2)*2
THREES = lambda dice: dice.count(3)*3
FOURS = lambda dice: dice.count(4)*4
FIVES = lambda dice: dice.count(5)*5
SIXES = lambda dice: dice.count(6)*6
FULL_HOUSE = lambda dice: full_house(dice)
FOUR_OF_A_KIND = lambda dice: four_of_a_kind(dice)
LITTLE_STRAIGHT = lambda dice: 30 if sorted(dice) == [1, 2, 3, 4, 5] else 0
BIG_STRAIGHT = lambda dice: 30 if sorted(dice) == [2, 3, 4, 5, 6] else 0
CHOICE = lambda dice: sum(dice)

def score(dice, category):
    return category(dice)

def full_house(dice):
    unique_numbers = (list(set(dice)))

    if len(unique_numbers) == 2 and dice.count(unique_numbers[0]) <=3 \
        and dice.count(unique_numbers[1]) <=3:
        return sum(dice)
    else:
        return 0

def four_of_a_kind(dice):
    unique_numbers = (list(set(dice)))
    for i in unique_numbers:
        if dice.count(i) >= 4:
            return 4*i
    return 0
