class Customer
  attr_reader :profile, :orders

  def initialize(name, address, phone)
    @profile = {
      :name => name,
      :address => address,
      :phone => phone
    }
    @orders = 0
  end

  def order_in_place?
    return false if orders == 0
  end
end