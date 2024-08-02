class AppleBasket:
    def __init__(self, color: str, quantity: int):
        self.quantity = quantity
        self.color = color

    def increase(self):
        self.quantity += 1

    def __str__(self):
        return f'A basket of {self.quantity} {self.color} apples'


class GreenAppleBasket(AppleBasket):
    def __init__(self, quantity: int):
        super().__init__('Green', quantity)
