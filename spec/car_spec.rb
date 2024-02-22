require 'car'

RSpec.describe Car do
    let(:car) { Car.new('Honda', 'Civic', 'Orange', 300) }

    describe "#set_price" do
        it "changes the price of the car" do
            car.set_price(500)
            expect(car.price).to eq(500)
        end
    end

    describe "#paint" do
        it "changes the color of the car" do
            car.paint("Green")
            expect(car.color).to eq("Green")
        end
    end

    describe "#show_car_info" do
        it "displays the car's information" do
            expect{ car.show_car_info }.to output("Make: Honda\nModel: Civic\nColor: Orange\nPrice: $300\nMileage: 0\n").to_stdout
        end
    end

    describe "#travel" do
        it "puts mileage on the car" do
            car.travel(321)
            expect(car.mileage).to eq(321)
        end
    end
end