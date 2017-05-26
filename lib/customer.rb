require './lib/pizza.rb'

class Customer

  def initialize(name, address, phone)
    @order_status = false

  end

  def profile
    { name: "Lauren",
      address: "1700 Blake St.",
      phone: "505-110-1001"}
  end

  def order_in_place?
    @order_status
  end

  def place_order(pizza, time)
    @order_status = true
  end

end
