require './lib/pizza.rb'

class Customer

  attr_reader :name, :address, :phone, :order_in_place

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_in_place = false
  end

  def profile
    {:name => @name,
      :address => @address,
      :phone => @phone}
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, date_time)
    @order_in_place = true
  end

end
