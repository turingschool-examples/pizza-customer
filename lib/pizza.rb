require './lib/prices'
##
# Pizza class builds the pizza and retrieves the prices

class Pizza
  include Prices

  def initialize(size, type, crust)
    @size  = size
    @type  = type
    @crust = crust
  end

  ##
  # Full order gets the full order from the initialize and puts it into
  # a hash

  def full_order
    {
      :size  => @size,
      :type  => @type,
      :crust => @crust
    }
  end

  ##
  # Calculate price gets the total price of the pizza

  def calculate_price
    pizza_prices[:size][@size.to_sym] + 
    pizza_prices[:type][@type.to_sym] + 
    pizza_prices[:crust][@crust.to_sym]
  end

end
