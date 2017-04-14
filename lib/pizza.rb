require 'pry'
require_relative 'prices'
class Pizza
  include Prices
  attr_reader :size, :type, :crust
    def initialize(size, type, crust)
      @size = size
      @type = type
      @crust = crust
    end

    def full_order
      new_order = {}
      new_order[:size] = size
      new_order[:type] = type
      new_order[:crust] = crust
      new_order
    end

    def calculate_price
      price = 0.00
      prices = pizza_prices
      price += prices[:size][size.to_sym]
      price += prices[:crust][crust.to_sym]
      if type == "cheese"
        price += prices[:type][type.to_sym]
      else
        price += prices[:type][:special]
      end
    end
end
