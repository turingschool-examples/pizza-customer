require './lib/prices'

class Pizza
  include Prices

  attr_reader :full_order

  def initialize(size, type, crust)
    @full_order = {
      size: size,
      type: type,
      crust: crust
    }
  end

  def calculate_price
    [
      pizza_prices[:size][full_order[:size].to_sym],
      pizza_prices[:type][full_order[:type].to_sym],
      pizza_prices[:crust][full_order[:crust].to_sym]
    ].reduce(:+)
  end
end
