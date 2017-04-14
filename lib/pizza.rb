require './lib/prices'

class Pizza
  include Prices
  attr_reader :size,
              :type,
              :crust

  def initialize(size, type, crust)
    @size   = size
    @type   = type
    @crust  = crust
  end

  def full_order
    order = {:size => size, :type => type, :crust => crust}
  end

  def calculate_price
    total = 0
    redeem_type
    full_order.each do |key, value|
      total += pizza_prices[key][value.to_sym]
    end
    total
  end

  def redeem_type
   type == "cheese" ? type = type : @type = "special"
  end
end
