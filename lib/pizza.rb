class Pizza
  require './lib/prices'
  include Prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def type
    if @type != "cheese"
      @type = "special"
    end
  end

  def full_order
    {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
    pizza_prices[:size][@size] +
    pizza_prices[:type][@type] +
    pizza_prices[:crust][@crust]
  end
end
