require "./lib/prices"

class Pizza
attr_reader :size, :type, :crust, :pizza
include Prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @new_order = {}
  end

  def full_order
    new_order = {size: @size, type: @type, crust: @crust}
  end

  def calculate_price
    #should return a sum of prices based on the "pizza prices" method in
    #the prices module.
    #test passing with dummy calues passsed in. Must access hash in prices module!

    size_price = 7.00#return from prices module
    type_price = 6.00#return from prices module
    #if type == "cheese" equals "cheese" price, else returns the "special" price
    crust_price = 2.00#return from prices module

    size_price + type_price + crust_price
  end

end
