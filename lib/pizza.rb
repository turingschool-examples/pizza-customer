require './lib/prices'
class Pizza
  include Prices
  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size =  size
    @type = type
    @crust = crust
  end

  def full_order
    {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
    total_price = 0
    total_price += pizza_prices[:size][size.to_sym]
    if pizza_prices[:type][type.to_sym].nil?
      binding.pry
    else
      total_price += pizza_prices[:type][type.to_sym]
    end
    total_price += pizza_prices[:crust][crust.to_sym]
    total_price

  end

end
