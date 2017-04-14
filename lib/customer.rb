class Customer
  attr_reader :name,
              :address,
              :phone,
              :orders,
              :order_frequency

  def initialize(name, address, phone)
    @name             = name
    @address          = address
    @phone            = phone
    @orders           = []
    @order_frequency  = 0
  end

  def profile
    profile = {:name => name, :address => address, :phone => phone}
  end

  def order_in_place?
    !orders.empty?
  end

  def place_order(pizza, time)
    orders << [pizza, time]
    @order_frequency += 1
  end


  def frequent_customer?
    recent_orders.count >= 3 ? true : false
  end

  def today
    DateTime.now.strftime("%Y%m%d").to_i
  end

  def recent_orders
    orders.find_all do |order|
      day = order[1].strftime("%Y%m%d").to_i
      today - day < 30
    end
  end

end
