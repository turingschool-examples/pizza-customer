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
    {
      size: size,
      type: type,
      crust: crust
    }
  end

  def calculate_price
    pizza_prices[:size].values[1] + pizza_prices[:type].values[0] + pizza_prices[:crust].values[2]
  end



end
