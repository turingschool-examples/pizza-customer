class Customer
  attr_reader :name, :address, :phone, :order
  def initialize(*args)
    @name = args[0]
    @address = args[1]
    @phone = args[2]
  end

  def profile
    {
      name: name,
      address: address,
      phone: phone
    }
  end

  def place_order(pizza, time)
    @order = {pizza: pizza, time: time}
  end

  def order_in_place?
    !@order.nil?
  end
end
