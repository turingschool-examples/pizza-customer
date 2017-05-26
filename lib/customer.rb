class Customer
  attr_reader :orders
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @orders = {}
  end

  def profile
    {
      name: @name,
      address: @address,
      phone: @phone
    }
  end

  def order_in_place?
    !orders.empty?
  end

  def place_order(pizza, time)
    orders[time] = pizza
  end

  def order_frequency
    orders.keys.length
  end

  def frequent_customer?
    if order_frequency > 2 && !orders_far_apart?
      true
    end
  end

  def orders_far_apart?
    orders.any? do |time, pizza|
      (DateTime.now - time).to_f > 30
    end
  end
end
