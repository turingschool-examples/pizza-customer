require './lib/prices'

class Pizza
  include Prices
  attr_accessor :size, :type, :crust
  def initialize (size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {:size=>size, :type=>type, :crust=>crust}
  end

  def calculate_price
    price = 0
    price += pizza_prices[:size][size.to_sym]
    price += pizza_prices[:type][type.to_sym]
    price += pizza_prices[:crust][crust.to_sym]
    return price
  end
end
