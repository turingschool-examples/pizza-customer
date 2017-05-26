require_relative 'prices'

class Pizza < Prices::PizzaPrices
  attr_reader :pizza

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    order = {size: @size, type: @type, crust: @crust}
    order
  end

  def calculate_price
    total_price = nil
      size_price = pizza_prices.fetch(:size).fetch(@size)
      type_price = pizza_prices.fetch(:type).fetch(@type)
      crust_price = pizza_prices.fetch(:crust).fetch(@crust)
    total_price = size_price + type_price + crust_price
  end


end
