require_relative 'prices'
require "pry"

class Pizza
  include Prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {
      size: @size,
      type: @type,
      crust: @crust
    }
  end

  def calculate_price
    total_price = 0.0

    pizza_prices.each do |trait, prices|
      prices.each do |choice, price|
        if full_order[trait].to_sym == choice
          total_price += price
        end
      end
    end
    total_price
  end
end
