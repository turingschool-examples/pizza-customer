class Customer < 
  attr_accessor :name, :address, :phone
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
  end

  def frequent_customer?
  end

  def order_in_place?
  end

  def order_frequency
  end
end
