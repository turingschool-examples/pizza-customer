class Customer
  attr_reader :profile, :order_frequency

  def initialize(name, address, phone)
    @profile = {
      name: name,
      address: address,
      phone: phone
    }
    @orders             = []
    @order_in_place     = false
  end

  def order_in_place?
    @order_in_place
  end

  def order_frequency
    @orders.count
  end

  def place_order(pizza, time)
    @orders << [pizza, time]
    @order_in_place = true
  end

  def frequent_customer?
    order_frequency > 2 && @orders[0..2].all? { |e| DateTime.now - 30 < e[1] }
  end
end
