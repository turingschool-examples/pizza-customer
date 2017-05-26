class Pizza

  attr_reader :calculate_price, :size, :type, :crust, :new_order

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @new_order = new_order
    @calulate_price = calculate_price
  end

end
