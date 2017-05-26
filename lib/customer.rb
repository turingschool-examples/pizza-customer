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
    
  end
end
