require './lib/prices'

class Pizza
  include Prices

  attr_reader :size, :type, :crust

  def initialize(size="medium", type="cheese", crust="deep_dish")
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    new_order = {
      size: size,
      type: type,
      crust: crust
    }
  end

  def calculate_price
    identify_pizza(new_order)
  end

  def identify_pizza(order)
    identify_size(order)
    identify_type(order)
    identify_crust(order)
  end

  def identify_size(order)
  end

  def identify_type(order)
  end

  def identify_crust(order)
  end


end
