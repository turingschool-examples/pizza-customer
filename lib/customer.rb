require 'date'
require 'pry'
require './lib/pizza'

class Customer
  attr_reader :name, :address, :phone, :order_placed, :date
  attr_accessor :order

  def initialize(name, address, phone, order=0)
    @name = name
    @address = address
    @phone = phone
    @order = order
  end

  def profile
    {:name => @name, :address => @address, :phone => @phone}
  end

  def order_in_place?
    if @order == 0
      false
    else
      true
    end
  end

  def place_order(order, date)
    @order += 1
    @date = DateTime.now
    order_in_place?
  end

  def order_frequency
    @order
  end

  def frequent_customer?
    if @order >= 3 && @date < 30
      true
    else
      false
    end
  end
end
