require './lib/prices'

class Pizza
  include Prices

  attr_reader :size, :type, :crust


  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end


  def full_order
    @full_order = {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
    #terrible attempt...
    x = pizza_prices[:size]
    y = x[@size]

    a = pizza_prices[:type]
    b = a[@type]

    z = pizza_prices[:crust]
    n = z[@crust]

    y + b + n

    #find the key size, go to this hash and find the key that matches the "size" from initialize
    #add this price
    #go to the pizza_prices hash
    #find the key type, go to this hash and find the key that matches the "type" from initialize
    #add this price
    #go to the pizza_prices hash
    #find the key crust, go to this hash and find the key that matches the "cust" from initialize
    #add this price
  end

end
