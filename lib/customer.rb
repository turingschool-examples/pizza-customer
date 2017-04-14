class Customer
  attr_accessor :status
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @status = false
  end

  def profile
    Hash[ name: @name, address: @address, phone: @phone ]
  end

  def order_in_place?
    @status
  end
end