require 'date'

class Customer

  attr_reader :profile, :order_history, :order_in_place

  def initialize(name, address, number)
    @profile = {name: name, address: address, phone: number}

    @order_history = []
    @order_in_place = false
  end

  def order_frequency
    order_history.length
  end

  def place_order(pizza, time)
    @order_in_place = true
    order_history << [time, pizza]
  end

  def order_in_place?
    order_in_place
  end

  def frequent_customer?
    order_history.last(3).reduce(true) do |no_orders_older_than_30_days, order|
      no_orders_older_than_30_days = false if order[0] < Date.now - 30
      no_orders_older_than_30_days
    end
  end
end