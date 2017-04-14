require_relative 'prices'
require 'pry'

class Pizza
  include Prices
  attr_reader :pizza_size, :pizza_type, :pizza_crust

  def initialize(size, type, crust)
    @pizza_size = size
    @pizza_type = type
    @pizza_crust = crust
  end

  def full_order
    order_details = {
      size: pizza_size,
      type: determine_pizza_type,
      crust: pizza_crust
    }
  end

  def determine_pizza_type
    if pizza_type == "cheese"
      return pizza_type
    else
      return :special
    end
  end

  def calculate_price
    price = 0.0
    full_order.each do |pizza_attributes|
      price += pizza_prices[pizza_attributes.first][pizza_attributes.last.to_sym]
    end
    price
  end
end
