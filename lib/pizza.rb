require_relative './prices'

class Pizza

  include Prices

  attr_reader :full_order

  def initialize(size, topping, crust)
    @full_order ={size: size, type: topping, crust: crust}
  end

  def calculate_price
    full_order.reduce(0) do |price, (k, val)|
      # require "pry"; binding.pry
      val = "special" if k == :type && val != "cheese"
      price += pizza_prices[k][val.to_sym]
      price
    end
  end
end