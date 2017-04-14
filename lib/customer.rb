class Customer
  attr_reader :profile, :order_in_place

  def initialize(name, address, phone)
    @profile = {
      :name => name,
      :address => address,
      :phone => phone
    }
    @order_in_place = false
  end
end