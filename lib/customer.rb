require 'pry'
class Customer
  attr_reader :customer_name, :customer_address, :customer_phone, :open_order, :order_frequency, :order_dates

  def initialize(customer_name, customer_address, customer_phone)
    @customer_name = customer_name
    @customer_address = customer_address
    @customer_phone = customer_phone
    @open_order = false
    @order_dates = []
    @order_frequency = 0
  end

  def profile
    profile = {
      name: customer_name,
      address: customer_address,
      phone: customer_phone
    }
  end

  def order_in_place?
    open_order
  end

  def place_order(pizza, time_stamp)
    @open_order = true
    @order_dates << time_stamp
    prune_old_orders
    @order_frequency += 1
  end

  def prune_old_orders
    thirty_days_ago = DateTime.now - 30
    order_dates.map do |date|
      if date < thirty_days_ago
        order_dates.delete(date)
      end
    end
  end

  def frequent_customer?
    if order_dates.length >= 3
      true
    else
      false
    end
  end

end