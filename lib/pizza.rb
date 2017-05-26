require "./lib/prices"

class Pizza
  include Prices
  attr_reader :size, :type, :crust
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust 
  end 
  
  def type_for_pricing
    return "special" if @type != "cheese"
    return "cheese"
  end 
  
  def full_order
    {:size => @size, 
    :type => @type, 
    :crust => @crust}
  end 
  
  def calculate_price
    size_price = pizza_prices[:size][@size.intern]
    type_price = pizza_prices[:type][type_for_pricing.intern]
    crust_price = pizza_prices[:crust][@crust.intern]
    size_price + type_price + crust_price
  end 
end 