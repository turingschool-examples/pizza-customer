class Customer 
  attr_reader :name, :address, :phone
  
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @orders = {}
  end 
  
  def profile 
    {:name => @name, 
    :address => @address, 
    :phone => @phone}
  end 
  
  def order_in_place?
    return nil if @orders.empty?
    return true
  end 
  
  def place_order(pizza, time)
    @orders[time] = pizza
  end 
  
  def order_frequency
    @orders.keys.count
  end 
  
  def frequent_customer?
    order_frequency >= 3
  end 
end 