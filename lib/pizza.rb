require './lib/prices'

class Pizza
  include Prices
  attr_accessor :size, :type, :crust
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    Hash[ size: @size, type: @type, crust: @crust ]
  end

  def calculate_price
    crust_price + size_price + type_price
  end

  def crust_price
    pizza_prices[:crust][@crust.to_sym]
  end

  def size_price
    pizza_prices[:size][@size.to_sym]
  end

  def type_price
    pizza_prices[:type][@type.to_sym]
  end
end