require './lib/pizza'

class Customer

  attr_reader :name, :address, :phone, :order

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order = {}
  end

  def profile
    profile = {name: @name, address: @address, phone: @phone}
  end

  def order_in_place?
    if order.count == 0
      false
    else
      true
    end
  end

  def place_order(pizza, time)
    @order[order.count+1] = {pizza: pizza, time: time}
  end

  def order_frequency
    @order.count
  end

  def frequent_customer?
    if order_frequency < 3 && @order.each {|order| order[:time].between?(DateTime.now, (DateTime.now -30))}
      false
    else
      true
    end
  end


end
