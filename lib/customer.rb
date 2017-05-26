require "./lib/pizza"

class Customer
  attr_accessor :name, :address, :phone
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @DateTime = Time.new
  end

  def customer
    {:name=>name, :address=>address, :phone=>phone}
  end

  def place_order
    #Time.now
  end

  def frequent_customer?
  end

  def order_in_place?
  end

  def order_frequency
  end
end
