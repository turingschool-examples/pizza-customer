require './lib/pizza'

class Customer
  attr_reader :profile, :order_in, :order_frequency, :recent_orders

  def initialize(name, address, phone)
    @profile = {
      name: name,
      address: address,
      phone: phone
    }
    @order_in = false
    @order_frequency = 0
    @recent_orders = []
  end

  def order_in_place?
    @order_in
  end

  def place_order(pizza, date)
    @order_frequency += 1
    @recent_orders << date
    @order_in = true
  end

  def frequent_customer?
    if recent_orders.length > 3
      recent_orders.shift
    end
    if recent_orders.length > 1
      if recent_orders.last - recent_orders.first > 30
        recent_orders.shift
      end
    end
    return true if recent_orders.length >= 3
  end

end
