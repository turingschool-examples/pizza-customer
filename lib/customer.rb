require 'date'

class Customer
  attr_accessor :status, :order_frequency
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @status = false
    @order_frequency = 0
    @order_split = 0
  end

  def profile
    Hash[ name: @name, address: @address, phone: @phone ]
  end

  def order_in_place?
    @status
  end

  def place_order(item, time)
    @order_frequency += 1
    @status = true
  end

  def frequent_customer?
    @order_frequency >= 3
  end
end