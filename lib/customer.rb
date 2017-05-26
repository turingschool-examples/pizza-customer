class Customer
  attr_reader :name, :address, :phone, :pizza_order

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_frequency = 0
    @order = nil
    @order_time = nil
    @pizza_order = nil
  end

  def customer_profile
    profile = {
    :name => @name,
    :address => @address,
    :phone => @phone,
    }
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(order, time)
    @order = order
    @order_time = DateTime.now
    @order_in_place = true
    @order_frequency += 1
  end

  def order_frequency
    @order_frequency
  end

  def frequent_customer?
    @order_frequency > 1 ? true : false
  end



end
