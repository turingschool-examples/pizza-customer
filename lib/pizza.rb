require './lib/prices'

class Pizza
  include Prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    Hash[ size: @size, type: @type, crust: @crust ]
  end

  def calculate_price
    pizza_prices.values_at(@size, @type, @crust)
  end
end