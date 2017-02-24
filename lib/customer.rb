require './lib/pizza'
require 'date'

class Customer
  attr_reader :name, :address, :phone, :order_frequency, :recent
  attr_accessor :order
  
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order = false
    @order_frequency = 0
  end
  
  def profile
    {name: name, address: address, phone: phone}
  end
  
  def order_in_place?
    order ? true : false
  end
  
  def place_order(pizza, time)
    @order = true
    @order_frequency += 1
    time >= DateTime.now - 60 ? @recent = true : @recent = false
  end
  
  def frequent_customer?
    order_frequency >= 3 && recent ? true : false
  end
  
end