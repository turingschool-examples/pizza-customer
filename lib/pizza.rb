class Pizza

  attr_reader :size, :type, :crust, :new_order

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @new_order = new_order
  end

  def new_order
    @new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }
  end

  def calculate_price
    @calculate_price = Prices::new_order
  end
end
