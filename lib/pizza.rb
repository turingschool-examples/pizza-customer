require_relative 'prices'

class Pizza
  attr_reader :prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @prices = Prices.pizza_prices
  end

  def full_order
    order = {}
    order[:size] = @size
    order[:type] = @type
    order[:crust] = @crust
    return order
  end

  def calculate_price
    @price = 0
    case order[:size]
    when "small"
      @price = prices
    when "medium"
      @price =
    when "large"
      @price =

  end

end
