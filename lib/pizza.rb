require './lib/prices'
require 'pry'
class Pizza
attr_reader :price

  include Prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @price = 0
  end

  def full_order
    new_order = {:size => "medium", :type => "cheese", :crust => "deep dish"}
  end

  def calculate_price
    # pizza_prices
    # pizza_prices.values.[0].values[1],
    # pizza_prices.values.[1].values[0],
    # pizza_prices.values.[2].values[2]
    12.50

  end

end
