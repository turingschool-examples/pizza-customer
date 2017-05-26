class Pizza

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {
      size: @size,
      type: @type,
      crust: @crust
    }
  end

  def calculate_price
    12.50
  end
end
