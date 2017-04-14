require "./lib/prices"
require 'pry'

class Pizza
  include Prices

  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {size: @size, type: @type, crust: @crust}
  end

  def calculate_size_price
    pizza_prices[:size].each do |key , value|
      if key == full_order[:size].to_sym
        @size_price = value
      end
    end
    @size_price
  end

  def calculate_type_price
    pizza_prices[:type].each do |key , value|
      if key == full_order[:type].to_sym
        @type_price = value
      end
    end
    @type_price
  end

  def calculate_crust_price
    pizza_prices[:crust].each do |key , value|
      if key == full_order[:crust].to_sym
        @crust_price = value
      end
    end
    @crust_price
  end

  def calculate_price
    pizza_cost = calculate_crust_price + calculate_type_price + calculate_size_price
    pizza_cost
  end

end
