require 'pry'
require './lib/prices'

class Pizza
  include Prices

  attr_reader :new_order

  def initialize(size, type, crust)
    type = "special" if type != "cheese"
    @new_order = {
      size: size,
      type: type,
      crust: crust,
    }
    @order = {
      size: size.to_sym,
      type: type.to_sym,
      crust: crust.to_sym,
    }
  end

  def full_order
    new_order
  end

  def calculate_price
    size_price = pizza_prices[:size][@order[:size]]
    type_price = pizza_prices[:type][@order[:type]]
    crust_price = pizza_prices[:crust][@order[:crust]]
    price = size_price + type_price + crust_price
  end
end