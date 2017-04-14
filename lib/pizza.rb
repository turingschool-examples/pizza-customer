require './lib/prices'

class Pizza
include Prices
  attr_reader :size, :type, :crust
  def initialize(*args)
    @size = args[0]
    @type = args[1]
    @crust = args[2]
  end

  def full_order
    {
      size: @size,
      type: @type,
      crust: @crust
    }
  end

  def calculate_price
    price = 0
    pizza_prices.each do |key, value|
      value.each do |nested_key, nested_value|
        price += nested_value if size.to_sym == nested_key
        price += nested_value if type.to_sym == nested_key
        price += nested_value if crust.to_sym == nested_key
      end
    end
    price
  end
end
