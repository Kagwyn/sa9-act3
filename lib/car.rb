#this program displays and changes the information of a porsche and toyota

class Car
    attr_accessor :make, :model, :color, :price, :mileage
    #initializes the car
    def initialize(make, model, color, price, mileage = 0)
        @make = make
        @model = model
        @color = color
        @price = price
        @mileage = mileage
    end

    #set a new price of the car
    def set_price(p)
        @price = p
        puts "The #{@make} is now worth $#{@price}."
    end

    #paint the car a new color
    def paint(c)
        @color = c
        puts "The #{@make} is now #{@color}."
    end

    #display the car's information
    def show_car_info
        puts "Make: #{@make}"
        puts "Model: #{@model}"
        puts "Color: #{@color}"
        puts "Price: $#{@price}"
        puts "Mileage: #{@mileage}"
    end
        
    #put mileage on the car
    def travel(distance)
        puts "The #{@make} is traveling #{distance} miles."
        @mileage += distance
    end
end

if __FILE__ == $0
    #initialize porsche
    porsche = Car.new('Porsche', '718 Cayman GTS 4.0', 'Black', 87400)
    #initialize toyota
    toyota = Car.new('Toyota', 'Corolla L', 'Red', 20075)

    #show initial information
    porsche.show_car_info
    puts "\n"
    toyota.show_car_info
    puts "\n"

    #paint the cars new colors
    porsche.paint('White')
    toyota.paint('Blue')
    puts "\n"

    #put miles on each car
    porsche.travel(7500)
    toyota.travel(5000)
    puts "\n"

    #change the prices of each car
    porsche.set_price(77000)
    toyota.set_price(15000)
    puts "\n"

    #show new information
    porsche.show_car_info
    puts "\n"
    toyota.show_car_info
end