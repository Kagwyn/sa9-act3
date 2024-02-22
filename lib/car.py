#this program displays and changes the information of a porsche and toyota

class Car:
    def __init__(self, make, model, color, price, mileage = 0):#initializes the car
        self.make = make
        self.model = model
        self.color = color
        self.price = price
        self.mileage = mileage

    def set_price(self, p):#set a new price of the car
        self.price = p
        print(f'The {self.make} is now worth ${self.price}.')

    def paint(self, c):#paint the car a new color
        self.color = c
        print(f'The {self.make} is now {self.color}.')

    def show_car_info(self):#display the car's information
        print(f'Make: {self.make}')
        print(f'Model: {self.model}')
        print(f'Color: {self.color}')
        print(f'Price: ${self.price}')
        print(f'Mileage: {self.mileage}')
        

    def travel(self, distance):#put mileage on the car
        print(f'The {self.make} is traveling {distance} miles.')
        self.mileage += distance

porsche = Car('Porsche', '718 Cayman GTS 4.0', 'Black', 87400)#initialize porsche
toyota = Car('Toyota', 'Corolla L', 'Red', 20075)#initialize toyota


porsche.show_car_info()#show initial information
print()
toyota.show_car_info()
print()

porsche.paint('White')#paint the cars new colors
toyota.paint('Blue')
print()

porsche.travel(7500)#put miles on each car
toyota.travel(5000)
print()

porsche.set_price(77000)#change the prices of each car
toyota.set_price(15000)
print()

porsche.show_car_info()#show new information
print()
toyota.show_car_info()
