require './lib/prices'
class Pizza
  attr_reader :size, :type, :crust
  def initialize(size, type, crust)
    extend Prices
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    new_order = {
    :size => @size,
    :type => @type,
    :crust => @crust,
    }
  end

  def calculate_price
    total = pizza_prices
    total = total[:size][@size.to_sym] + total[:type][@type.to_sym] + total[:crust][@crust.to_sym]
    total
  end
end
