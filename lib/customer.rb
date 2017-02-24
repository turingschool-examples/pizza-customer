class Customer
  attr_reader :name, :address, :phone, :order_frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_in_place = false
    @order_frequency = 0
  end

  def profile
    {
    name: name,
    address: address,
    phone: phone
  }
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, time)
    @order_in_place = true && @order_frequency +=1
  end

  def frequent_customer?
    return true if @order_frequency >= 3
  end

end
