class Customer
  attr_reader :profile, :order_frequency
  def initialize(name, address, phone)
    @profile = {name: name, address: address, phone: phone}
    @order_frequency = 0
    @frequent = 0
  end

  def order_in_place?
    @order ? true : false
  end

  def place_order(pizza, time)
    @order = [pizza, time]
    @order_frequency += 1 
    @frequent += 1 if (time > DateTime.now - 30)
  end

  def frequent_customer?
   @frequent < 3 ? false : true
  end


end