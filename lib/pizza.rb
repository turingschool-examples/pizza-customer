class Pizza

  def initialize(size, type, crust)
    @size  = size
    @type  = type
    @crust = crust
  end

  def full_order
    {size: "medium",
     type: "cheese",
     crust: "deep dish"}
  end

  def calculate_price
    12.5
  end
end
