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
    full_order
    find_pizza_prices = pizza_prices.fetch_values
    binding.pry
  end

end
