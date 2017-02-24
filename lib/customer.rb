require 'pizza'
class Customer
  attr_reader :profile, :order_in_place
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @profile = {name: name, address: address, phone: phone}
    @order_in_place = false
    @order_frequency = 0
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(order, time)
    @order_in_place = true
  end

  # def order_frequency
  #   @order_frequency += 1
  # end
end
