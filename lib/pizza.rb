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
    order = {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
    #full_order.inject(Hash.new(0)) do |count, pizza|

  end
end
