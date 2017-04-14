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
end
