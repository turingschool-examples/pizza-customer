require './lib/prices'
require 'pry'
class Pizza
  include Prices
  attr_reader :size, :type, :crust
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    # new_order = Hash.new(0)
    new_order = {:size => size, :type => type, :crust => crust}
  end

  def calculate_price
    pizza = Pizza.new(size, type, crust)
    pizza.size
    binding.pry
    pizza_prices[:size][":#{pizza.size}"]
  end
end
