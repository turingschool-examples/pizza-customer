require "pry"
require_relative 'prices'

class Pizza
include Prices
attr_reader :size, :type, :crust

  def initialize(size = nil, type = nil, crust = nil)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    order = {
      size: size,
      type: type,
      crust: crust
    }
      return order
  end

  def calculate_price
    info = []
    pizza_prices[:size].each_pair do |key, value|
      if key == @size.to_sym
      info << value
      end
    end
    pizza_prices[:type].each_pair do |key, value|
      if key == @type.to_sym
      info << value
      end
    end
    pizza_prices[:crust].each_pair do |key, value|
      if key == @crust.to_sym
      info << value
      end
    end
    info.reduce(0) {|a, sum| a + sum}
  end

end
