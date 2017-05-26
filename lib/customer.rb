class Customer

  def initialize(name, address, phone_number)
    @order_in_place = false
  end

  def profile
    profile = {
      name: "Lauren",
      address: "1700 Blake St.",
      phone: "505-110-1001"
    }
  end

  def place_order(pizza, date)
    @order_in_place = true
  end

  def order_in_place?
    @order_in_place
  end

end
