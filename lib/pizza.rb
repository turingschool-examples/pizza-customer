require_relative 'prices'

class Pizza
  include Prices

  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size  = size
    @type  = type
    @crust = crust
  end

  def full_order
    new_order = Hash.new(0)
    new_order[:size]  = size
    new_order[:type]  = type
    new_order[:crust] = crust
    new_order
  end

  def calculate_price
    [pizza_prices[:size][full_order[:size].to_sym],
    pizza_prices[:type][full_order[:type].to_sym],
    pizza_prices[:crust][full_order[:crust].to_sym]].inject(:+)
  end

end
