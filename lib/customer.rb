require 'pry'
class Customer
  attr_reader :profile, :orders, :order_frequency

  def initialize(name, address, phone)
    @profile = {
      :name => name,
      :address => address,
      :phone => phone
    }
    @orders = {}
    @order_frequency = 0
    @frequent = nil
  end

  def order_in_place?
    if orders.empty?
      false
    else
      true
    end
  end

  def place_order(pizza, time)
    @order_frequency += 1
    orders[pizza] = time
  end

  def frequent_customer?
    if orders.count < 3
      false
    elsif 
      true
    end
  end

  def last_30_days
    binding.pry
  end
end