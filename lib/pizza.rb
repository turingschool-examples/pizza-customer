class Pizza

  def initialize(size, topping, crust)
    @size = size
    @topping = topping
    @crust = crust
  end

  def full_order
    new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }
  end

  def calculate_price
    12.50

  end



end
