require './lib/prices'
class Pizza
  attr_reader :full_order

  def initialize(size, toppings, crust)
    @full_order = {size: size, type: toppings, crust: crust}
    @type_price = {
        "cheese" => 3.00,
        "black olive" => 6.00,
        "pepperoni" => 6.00,
        "special" => 6.00
      }
      @crust_price = {
        "regular": 3.00,
        "thin": 2.00,
        "deep dish": 4.00
      }
  end

  include Prices

  def calculate_price
    price = 0
    price += @type_price[@full_order[:type]]
    if @full_order[:size] == "medium"
      price += 9.50
    else
      price += 9
    end
  end
  # def calculate_price
  #   price = 0
  #   price += @type_price[@full_order[:type]]
  #   price += @crust_price[@full_order[:crust]]
  # end
end