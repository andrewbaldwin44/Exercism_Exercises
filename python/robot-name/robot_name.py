import random

class Robot:
    def __init__(self):
        #Reset seed to current sys time so radint cannot be duplicated
        #Generate a random number between 65 and 90 -> ASCII value for all capital letters
        #char() translates ASCII value to alpha
        random.seed()
        self.name = chr(random.randint(65, 90)) + chr(random.randint(65, 90)) + str(random.randint(100, 999))

    def reset(self):
        random.seed()
        self.name = chr(random.randint(65, 90)) + chr(random.randint(65, 90)) + str(random.randint(100, 999))
