class Customer
  attr_reader :name, :address, :phone, :order_in_place
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_in_place = []
    @counter = 0
  end
  
  def profile
    {name: name, address: address, phone: phone}
  end

  
  def place_order(pizza, time)
    @order_in_place << pizza
    @order_in_place << time
    @counter += 1
  end

  def order_in_place?
    @order_in_place 
    end
    
  def order_frequency
    @counter
  end

  def frequent_customer?
    @order_in_place.last
    end
end