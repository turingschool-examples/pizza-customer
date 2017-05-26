require './lib/prices'

class Pizza
  def initialize(size, topping, style)
    @size = size
    @style = style
    @topping = topping
  end

  def full_order
    new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }
  end

  def calculate_price

  end


end
