class Matrix:
    def __init__(self, matrix_string):
        self.matrix = [
            [int(word) for word in line.split()]
            for line in matrix_string.splitlines()
        ]

    def row(self, index):
        return self.matrix[index-1]

    def column(self, index):
        return [x[index-1] for x in self.matrix]
