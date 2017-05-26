require './lib/pizza'
require 'date'
class Customer
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @count = 0
  end

  def profile
    {name: @name, address: @address, phone: @phone}
  end

  def order_in_place?
    if @count == 0
      false
    else
      true
    end
  end

  def place_order(pizza, time)
    pizza = Pizza
    time = DateTime
    @count += 1
  end

  def order_frequency
    @count
  end

  def frequent_customer?
    if @count < 3
      false
    else
      true
    end
  end
end
