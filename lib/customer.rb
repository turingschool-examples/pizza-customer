class Customer
  attr_reader :customer_name, :customer_address, :customer_phone, :open_order, :order_frequency

  def initialize(customer_name, customer_address, customer_phone)
    @customer_name = customer_name
    @customer_address = customer_address
    @customer_phone = customer_phone
    @open_order = false
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
    @order_frequency += 1
  end

 

end