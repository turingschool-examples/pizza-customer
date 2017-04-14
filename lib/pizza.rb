require './lib/prices.rb'
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
    {:size => @size, :type => @type, :crust => @crust}
  end

  def calculate_price
    find_pizza_prices = pizza_prices[full_order]
    binding.pry
  end

end
