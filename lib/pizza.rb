require './lib/prices'

class Pizza
  include Prices

  attr_reader :size, :type, :crust
  
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {
      :size => size,
      :type => type,
      :crust => crust
    }
  end

  def calculate_price
    individual_price = []
    full_order.each do |attribute, selection|
      individual_price << pizza_prices[attribute][selection.to_sym]
    end
    individual_price.reduce(0) { |sum, price| sum + price}
  end
end