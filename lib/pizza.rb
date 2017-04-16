require "./lib/prices"
require "pry"
class Pizza
attr_reader :new_order
include Prices

  def initialize(size, type, crust)
    @new_order = {
      size: size,
      type: type,
      crust: crust
    }

  end

  def full_order
    new_order
  end

  def calculate_price
    size_price = pizza_prices[:size][full_order[:size].to_sym]
    type_price = check_specials
    crust_price = pizza_prices[:crust][full_order[:crust].to_sym]
    # binding.pry

    size_price + type_price + crust_price
  end

  def check_specials
    if full_order[:type] == "cheese"
      pizza_prices[:type][:cheese]
    else
      pizza_prices[:type][:special]
    end

  end
end
# #
# pizza = Pizza.new("medium", "cheese", "deep dish")
# ""
