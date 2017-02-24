require 'pry'
require './lib/prices'

class Pizza
  include Prices
  attr_reader :full_order
  def initialize(size, type, crust)
    @full_order = {
      :size => size,
      :type => type,
      :crust => crust
    }
  end

  def calculate_price
    size_price + type_price + crust_price
  end

  def size_price
    pizza_prices[:size][full_order[:size].to_sym]
  end

  def type_price
    if pizza_prices[:type][full_order[:type].to_sym].nil?
      pizza_prices[:type][:special]
    else
      pizza_prices[:type][full_order[:type].to_sym]
    end
  end

  def crust_price
    pizza_prices[:crust][full_order[:crust].to_sym]
  end

end
