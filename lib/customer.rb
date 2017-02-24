class Customer
  attr_reader :name, :address, :phone, :order, :orders

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order = nil
    @orders = []
  end

  def profile
    {
      name: name,
      address: address,
      phone: phone
    }
  end

  def order_in_place?
    order
  end

  def place_order(pizza, time)
    @order = [pizza, time]
    @orders << order
  end
    
  def order_frequency
    orders.count
  end

  def frequent_customer?
    # orders.count > 2
    #insert 30 day limit
    recent_orders = orders.select{ |order| (DateTime.now - order[1]) <= 30 } 
    recent_orders.count > 2
  end


end