require "./lib/prices"
class Pizza
  include Prices

  def initialize(medium, cheese, deep_dish)
    @pizza = "pizza"
  end

  def calculate_price
  pizza_prices
    # 12.5
  end

  def full_order
    new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }
  end

  def calculate_another_price

  end

end
