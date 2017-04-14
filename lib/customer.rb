class Customer
  attr_reader :name, :address, :phone_number, :orders
  def initialize(name, address, phone_number)
    @name = name
    @address = address
    @phone_number = phone_number
    @orders = []
  end

  def profile
    profile = {:name => name, :address => address,
               :phone => phone_number}
  end

  def order_in_place?
    !orders.empty?
  end

  def place_order(pizza, time)
    orders << [pizza, time]
  end

  def order_frequency
    orders.count
  end

  def frequent_customer?
    frequent = true
    return false if orders.count < 3
    thirty_days_ago = DateTime.now - 30
    orders.each do |order|
      if order[1] < thirty_days_ago
        return false
      end
    end
  end
end