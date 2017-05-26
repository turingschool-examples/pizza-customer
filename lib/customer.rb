require 'pry'
require_relative 'pizza'

class Customer
  attr_reader :name,
              :address,
              :phone,
              :frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @current_order = nil
    @frequency = 0
  end

  def profile
    {name: @name, address: @address, phone: @phone}
  end

  def place_order(order, time)
    @current_order = [order, time]
    @frequency += 1
  end

  def order_in_place?
    if @current_order.nil?
      false
    else
      true
    end
  end

  def order_frequency
    frequency
  end

  def frequent_customer?
    if @frequency >= 3
      true
    else
      false
    end
  end

end
