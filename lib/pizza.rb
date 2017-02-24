require 'pry'
require './lib/prices'

class Pizza
  include Prices
  attr_reader :size, :type, :crust, :new_order

  def initialize(size, type, crust)
    @new_order = Hash.new(0)
    new_order[:size] = size
    new_order[:type] = type
    new_order[:crust] = crust
  end

  def full_order
    new_order
  end

  def calculate_price
    pizza_price = []
    pizza_prices.each do |item, price|
      price.each do |item2, price2|
        pizza_price << if item2 == new_order[:size]

      end
    end
  end
end

end
