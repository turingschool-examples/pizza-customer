
require './lib/prices'


class Pizza
  include Prices
  attr_reader :size, :type, :crust
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end


  def full_order
    {
      size: size,
      type: type,
      crust: crust
    }
  end


  def calculate_price
    prices = full_order.map do |k, v|
      pizza_prices[k][v.to_sym]
    end
    
    if prices[1].nil?
      prices[1] = 6.0
    end
    prices.reduce(:+)
  end
    
end