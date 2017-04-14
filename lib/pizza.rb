require './lib/prices.rb'

class Pizza
  include Prices
  attr_reader :new_order

  def initialize(size, type, crust)
    @new_order = {
      size: size,
      type: type,
      crust: crust
    }
  end

  def check_specials
    new_order
    if pizza_prices[:type].has_key?(new_order[:type].to_sym)
      return new_order
    else
      new_order[:type] = "special"
    end
    new_order
  end

  def full_order
    check_specials
    new_order
  end

  def calculate_price
    total_price = 0

    total_price += pizza_prices[:size][full_order[:size].to_sym]
    total_price += pizza_prices[:type][full_order[:type].to_sym]
    total_price += pizza_prices[:crust][full_order[:crust].to_sym]

    total_price
  end

end
