class Customer

  attr_reader :order_frequency

  def initialize(name, address, phone_number)
    @order_in_place = false
    @order_frequency = 0
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
    @order_frequency += 1
  end

  def order_in_place?
    @order_in_place
  end

  def frequent_customer?
    if @order_frequency >= 3
      true
    else
      false
    end
  end
end
