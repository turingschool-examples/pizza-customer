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



end
