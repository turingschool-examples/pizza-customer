require 'pry'
require_relative 'prices'

class Pizza
  include Prices
  attr_reader :size,
              :type,
              :crust,
              :total

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @total = 0
  end

  def full_order
    {size: size, type: type, crust: crust}
  end

  def calculate_price
    cost1 = pizza_prices[:size][@size]
    cost2 = pizza_prices[:type][@type]
    cost3 = pizza_prices[:crust][@crust]
    @total = cost1 + cost2 + cost3
  end


end
