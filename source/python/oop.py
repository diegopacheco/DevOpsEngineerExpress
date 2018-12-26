class Math:
    def __init__(self, x, y):
        self.x = x
        self.y = y
    
    def add(self):
        return self.x + self.y

    def subtract(self):
        return self.x - self.y

    def multipy(self):
        return self.x * self.y

    def division(self):
        return self.x / self.y

m = Math(2,3)
print(m.add())
print(m.multipy())
print(m.subtract())
print(m.division())

