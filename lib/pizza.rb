require './lib/prices'
require 'pry'
class Pizza
  include Prices

  attr_reader :full_order, :size, :type, :crust

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @full_order = {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
  # need to convert the @size from string to symbol
    size_price = pizza_prices[:size][@size]
    type_price = pizza_prices[:type][@type]
    crust_price = pizza_prices[:crust][@crust]
binding.pry
    price = size_price + type_price + crust_price

  end

end
