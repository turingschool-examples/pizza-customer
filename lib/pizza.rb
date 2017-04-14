class Pizza
  def initialize(size, topping, style)
    @size = size
    @topping = topping
    @style = style
  end

  def full_order
    Hash[ size: @size, type: @topping, crust: @style ]
  end

  def calculate_price

  end
end