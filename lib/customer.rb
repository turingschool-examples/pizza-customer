require "pry"
require 'date'

class Customer
  attr_reader :name, :address, :phone, :orders, :order_frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @orders = []
    @order_frequency = 0
  end

  def profile
    profile = {
      name: name,
      address: address,
      phone: phone
    }
  end

  def order_in_place?
    if order_frequency == nil
      return false
    else
      return true
    end
  end

  def place_order(pizza, date_time)
  orders << pizza
  @order_frequency = order_frequency.to_i + 1
  end

  def frequent_customer?
    if order_frequency >= 3
      return true
    else
      return false
    end
  end
end
