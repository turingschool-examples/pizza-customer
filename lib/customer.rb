require 'date'
class Customer

  def initialize(name, address, phone)
    @name           = name
    @address        = address
    @phone          = phone
    @order_in_place = false
    @orders         = []
  end

  def profile
    {
      :name    => @name,
      :address => @address,
      :phone   => @phone
    }
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, time)
    p = Pizza.new([:size], [:type], [:crust])
    @orders << time
    @order_in_place = true
  end

  def order_frequency
    @orders.count
  end
  
  
end
