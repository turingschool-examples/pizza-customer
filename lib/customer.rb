class Customer
  attr_reader :name,
              :address,
              :phone_number

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone_number = phone
  end

  def profile
    prof = { :name => "Lauren",
    :address => "1700 Blake St.",
    :phone => "505-110-1001" }
    prof
  end

  def order_in_place?
    false
  end

  def place_order(pizza, time)
    



  end

end
