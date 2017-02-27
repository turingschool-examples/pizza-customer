require 'pry'

class Customer

  attr_reader :profile,
              :order_frequency

  def initialize(name, address, phone)
    @profile = {name: name, address: address, phone: phone}
    @order_in_place = false
    @order_history = {}
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, time)
    @order_in_place = true
    @order_history[time] = pizza
  end

  def order_frequency
    @order_history.length
  end

  def orders_in_last_30_days
    @order_history.select do |key, value|
      key >= DateTime.now - 30
    end
  end

  def frequent_customer?
    if orders_in_last_30_days.length >= 3
      true
    else
      false
    end
  end

end