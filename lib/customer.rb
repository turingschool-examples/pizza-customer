class Customer
  attr_reader :name,
              :address,
              :phone_number,
              :order_start,
              :counter

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone_number = phone
    @order_in_place = false

  end

  def profile
    prof = { :name => "Lauren",
    :address => "1700 Blake St.",
    :phone => "505-110-1001" }
    prof
  end

  def order_in_place?
    @order_in_place

  end

  def place_order(pizza, date_time)
    @order_in_place = true

  end

end
