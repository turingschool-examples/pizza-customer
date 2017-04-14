class Pizza
  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    full_order = {:size => @size,
                  :type => @type,
                  :crust => @crust}
  end

  def calculate_price
    case @size
    when "small"
      10.00
    when "medium"
      12.50
    when "large"
      15.00
    end
  end
end
