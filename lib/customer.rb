class Customer
  attr_reader :name, :address, :phone, :order
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order = nil
  end

  def profile
    profile = {}
    profile[:name] = name
    profile[:address] = address
    profile[:phone] = phone
    profile
  end

  def order_in_place?
    order
  end

  def place_order(pizza, time)
    time = DateTime.now
    order = pizza
  end
end
