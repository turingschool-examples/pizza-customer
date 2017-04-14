

class Customer
  attr_accessor :status, :orders
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @status = false
    @orders = 0
  end

  def profile
    Hash[ name: @name, address: @address, phone: @phone ]
  end

  def order_in_place?
    @status
  end

  def place_order(item, time)
    @orders += 1
    @status = true
  end

  def frequent_customer?
    @orders >= 3
  end
end