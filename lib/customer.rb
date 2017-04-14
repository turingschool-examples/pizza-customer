class Customer
  attr_reader :profile, :orders

  def initialize(name, address, phone)
    @profile = {
      :name => name,
      :address => address,
      :phone => phone
    }
    @orders = []
  end

  def order_in_place?
    if orders.empty?
      false
    else
      true
    end
  end

  def place_order(pizza, time)
    orders << pizza
  end
end