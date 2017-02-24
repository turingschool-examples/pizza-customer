require './lib/prices'

class Pizza
  include Prices
  attr_reader :size, :type, :crust, :full_order

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @full_order = {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
    size_price = if size == "small"
      pizza_prices[:size][:"small"]
    elsif size == "medium"
      pizza_prices[:size][:"medium"]
    else size == "large"
      pizza_prices[:size][:"large"]
    end

    type_price = if type == "cheese"
      pizza_prices[:type][:"cheese"]
    else
      pizza_prices[:type][:"special"]
    end

    crust_price = if crust == "regular"
      pizza_prices[:crust][:"regular"]
    elsif crust == "thin"
      pizza_prices[:crust][:"thin"]
    else
      pizza_prices[:crust][:"deepdish"]
    end

    size_price + type_price + crust_price
  end

end
