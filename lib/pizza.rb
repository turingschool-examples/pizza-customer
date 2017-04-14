require_relative 'prices'

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
      :size => size,
      :type => type,
      :crust => crust
    }
  end

  def calculate_price
    full_order.reduce(0) do |price, (key, val)|
      val = "special" if key == :type && val != "cheese"
      price += pizza_prices[key][val.to_sym]
      price
    end
  end
end