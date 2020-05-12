def triangle(sides):
    return 2 * max(sides) < sum(sides)

def unique_sides(sides, quantity):
    return len(set(sides)) == quantity

def equilateral(sides):
    return unique_sides(sides, 1) and triangle(sides)

def isosceles(sides):
    return not scalene(sides) and triangle(sides)

def scalene(sides):
    return unique_sides(sides, 3) and triangle(sides)

def degenerate(sides):
    return 2 * max(sides) == sum(sides)
