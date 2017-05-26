class Pizza

  def initialize(size, type, crust)
    @size  = size
    @type  = type
    @crust = crust
  end

  def calculate_price
    if @size == "large"
      15.00
    elsif @size == "medium"
      12.50
    else
      0
    end
  end

end
