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
    identify_pizza(full_order)
  end

  def identify_pizza(order)
    cost = identify_size(order) + identify_type(order) + identify_crust(order)
    cost
  end

  def identify_size(order)
    if order[:size] == "small"
      pizza_prices[:size][:small]
    elsif order[:size] == "medium"
      pizza_prices[:size][:medium]
    elsif order[:size] == "large"
      pizza_prices[:size][:large]
    end
  end

  def identify_type(order)
    if order[:type] == "cheese"
      pizza_prices[:type][:cheese]
    else
      pizza_prices[:type][:special]
    end
  end

  def identify_crust(order)
    if order[:crust] == "thin"
      pizza_prices[:crust][:thin]
    elsif order[:crust] == "regular"
      pizza_prices[:crust][:regular]
    elsif order[:crust] == "deep dish"
      pizza_prices[:crust][:deep_dish]
    end
  end
end
