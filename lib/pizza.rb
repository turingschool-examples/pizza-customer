require './lib/prices'

class Pizza

  include Prices

  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @new_order = {}
  end

  def full_order
    new_order = {:size => size, :type => type, :crust => crust}
  end

  def calculate_price
    
  end

end
