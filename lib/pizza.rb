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
    new_order = {
      size: @size,
      type: @type,
      crust: @crust
    }
  end

  def calculate_price
    pizza.pizza_prices[:size].size

  end
binding.pry

end

pizza = Pizza::Pizza.new("medium", "cheese", "deep dish")
