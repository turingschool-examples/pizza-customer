require './lib/prices'

class Pizza
  include Prices
  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size     = size
    @type     = type
    @crust    = crust
  end

  def full_order
    {size: @size,
     type: @type,
     crust: @crust}
  end

  def calculate_price
    types = self.full_order.keys
    selections = self.full_order.values

    order.reduce(0).with_index do |el, idx|
      prices[types[idx]]
    end
  end
end
