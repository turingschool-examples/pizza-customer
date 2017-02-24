require './lib/pizza'
require 'date'
require 'time'

class Customer

  attr_reader :name, :address, :phone
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_in_place = false
    @order_frequency = 0
  end

  def profile
    @profile = {name: @name, address: @address, phone: @phone}
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, time)
    @time = DateTime.now
    @order_in_place = true
    @order_frequency += 1
  end

  def order_frequency
    @order_frequency
  end


  def frequent_customer?
    now = DateTime.now
    past_30_days = (now - 30)

    if @order_frequency >= 3 && @time <= past_30_days
      true
    else
      false
    end
  end

end
