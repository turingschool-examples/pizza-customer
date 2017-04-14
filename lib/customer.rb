require './lib/pizza.rb'
require 'date'
require 'pry'

class Customer
  attr_reader :profile
  attr_accessor :order_frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @profile = {:name => @name,
                :address => @address,
                :phone => @phone}
    @order_in_place = false
    @order_frequency = []
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, time)
    @order_in_place = true
    @order_frequency << time
  end

  def order_frequency
    @order_frequency.count
  end

  def frequent_customer?
    orders_in_last_month = @order_frequency.select do | order |
      (DateTime.now - order).to_i < 30
    end
    orders_in_last_month.count >= 3 ? true : false
  end
end
