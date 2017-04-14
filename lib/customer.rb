require 'date'
require 'pry'

class Customer

  attr_reader :name, :address, :phone, :profile
  attr_accessor :order

  def initialize(name, address, phone, order = 0)
    @name = name
    @address = address
    @phone = phone
    @profile = {:name => name, :address => address, :phone => phone}
    @order = order
  end

  def profile
    @profile
  end

  def order_in_place?
    @order == 0 ? false : true
  end

  def place_order(type, date)
    order += 1
    date = DateTime
    order_in_place == true
  end

  def order_frequency
    @order
  end

  def frequent_customer?
    place_order(type, date) > 2 ? true : false
  end

end
