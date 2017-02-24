require './test/test_helper'

require './lib/customer'
require './lib/pizza'
require 'date'

class CustomerTest < Minitest::Test
  attr_reader :customer, :pizza

  def setup
    @customer = Customer.new("Lauren", "1700 Blake St.", "505-110-1001")
    @pizza = Pizza.new("small", "black olive", "thin")
  end

  def test_it_exists
    assert_instance_of Customer, customer
  end

  def test_customer_profile
    profile = {
      name: "Lauren",
      address: "1700 Blake St.",
      phone: "505-110-1001"
    }

    assert_equal profile, customer.profile
  end

  def test_order_in_place?
    refute customer.order_in_place?
  end

  def test_place_order
    customer.place_order(pizza, DateTime.now)

    assert customer.order_in_place?
  end

  def test_order_frequency
    assert_equal 0, customer.order_frequency

    customer.place_order(pizza, DateTime.now)

    assert_equal 1, customer.order_frequency
  end

  def test_frequent_customer?
    refute customer.frequent_customer?
  end

  def test_customer_becomes_frequent_after_3_orders_in_past_30_days
    refute customer.frequent_customer?

    3.times do
      customer.place_order(pizza, DateTime.now)
    end

    assert_equal 3, customer.order_frequency
    assert customer.frequent_customer?
  end

  def test_customer_not_frequent_with_more_than_3_orders_in_more_than_30_days
    refute customer.frequent_customer?

    long_ago_time   = DateTime.new(2016, 11, 19)
    even_longer_ago = DateTime.new(2016, 02, 23)

    customer.place_order(pizza, DateTime.now)
    customer.place_order(pizza, long_ago_time)
    customer.place_order(pizza, even_longer_ago)

    assert_equal 3, customer.order_frequency
    refute customer.frequent_customer?
  end
end
