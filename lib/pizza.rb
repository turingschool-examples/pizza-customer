class Pizza

  attr_reader :size, :style, :crust

  def initialize(size="medium", style="cheese", crust="deep_dish")
    @size = size
    @style = style
    @crust = crust
  end

  def full_order
    new_order = {
      size: size,
      type: style,
      crust: crust
    }
  end

  def calculate_price
    12.50
  end
end
