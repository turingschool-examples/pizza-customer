require './test/test_helper'
require './lib/pizza'

class PizzaTest < Minitest::Test
  attr_reader :pizza

  def setup
    @pizza = Pizza.new("medium", "cheese", "deep dish")
  end

  def test_it_exists
    assert_instance_of Pizza, pizza
  end

  def test_full_order
    new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }

    assert_equal new_order, pizza.full_order
  end

  def test_calculate_price
    assert_equal 12.50, pizza.calculate_price
  end

  def test_calculate_another_price
    pizza_2 = Pizza.new("large", "black olive", "thin")

    assert_equal 15.00, pizza_2.calculate_price
  end
end
