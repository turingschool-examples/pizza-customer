class Customer
  attr_reader :name, :address, :phone, :orders
  def initialize(*args)
    @name = args[0]
    @address = args[1]
    @phone = args[2]
    @orders = []
  end

  def profile
    {
      name: name,
      address: address,
      phone: phone
    }
  end

  def place_order(pizza, time)
    orders << {pizza: pizza, time: time}
  end

  def order_in_place?
    !orders.empty?
  end

  def order_frequency
    orders.length
  end

  def frequent_customer?
    if ( orders.length > 2 ) && orders_are_recent?
      true
    else
      false
    end
  end

  def orders_are_recent?
    # check if the last three orders were in the last 30 days.
    # if they are, return true. else, return false
  end
end
