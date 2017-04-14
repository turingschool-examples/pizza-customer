require 'pry'
require './lib/prices'

class Pizza
  include Prices
  def initialize(*args)
    @order = {
      size: args[0],
      type: args[1],
      crust: args[2]
    }
  end

  def full_order
    @order
  end

  def calculate_price
    full_order.reduce(0) do |sum, (option, selection)|
      # binding.pry
      sum + pizza_prices[option][selection.to_sym]
    end
  end
end
