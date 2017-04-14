require "pry"

class Pizza
attr_reader :size, :type, :crust

  def initialize(size = nil, type = nil, crust = nil)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    order = {
      size: size,
      type: type,
      crust: crust
    }
      return order
  end

  def calculate_price
    prices = {
      size: {"small" => 6.00, "medium" => 7.50, "large" => 9.50},
      type: {"cheese" => 3.00, "veggie" => 2.00, "pineapple" => 2.00},
      crust: {"deep_dish" => 3.00, "thin" => 2.50, "thick" => 5.00}
              }
  end

end
