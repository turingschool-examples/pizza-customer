require 'pry'
class Customer
  attr_reader :profile, :order_frequency, :order, :recent_order_frequency

  def initialize(name, address, phone)
    @profile = {
      :name => name,
      :address => address,
      :phone => phone
    }
    @order = false
    @order_frequency = 0
    @recent_order_frequency = 0
  end

  def order_in_place?
    order
  end

  def place_order(pizza, time)
    @order = true
    @order_frequency += 1
    if (time.mjd - DateTime.now.mjd).abs <= 30
      @recent_order_frequency += 1
    end
  end

  def frequent_customer?
    if (order_frequency >= 3) && (recent_order_frequency >= 3)
      true
    else
      false
    end
  end
end