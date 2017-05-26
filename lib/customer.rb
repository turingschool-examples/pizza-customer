class Customer
    attr_reader :name, :address, :phone, :order_frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_frequency = 0
  end

  def profile
    profile = {
      name: "Lauren",
      address: "1700 Blake St.",
      phone: "505-110-1001"
    }

  end

  def order_in_place?
    place_order = true
  end

  def place_order(pizza, time)
    # time = DateTime.now
    true
  end

  # def order_frequency
  #   place_order
  #   counter += 1
  # end

end
