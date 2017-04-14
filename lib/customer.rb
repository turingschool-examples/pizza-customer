require 'date'

class Customer
  attr_reader :name, :address, :phone

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order = false
    @counter = 0
    @frequent_customer = false
  end

  def profile
    customer_id = Hash.new(0)
    customer_id[:name] = name
    customer_id[:address] = address
    customer_id[:phone] = phone
    customer_id
  end

  def order_in_place?
    @order
  end

  def place_order(type, time)
    @counter += 1
    @order = true
  end

  def order_frequency
    @counter
  end

  def frequent_customer?
    if @counter > 2
      @frequent_customer = true
    else
      @frequent_customer = false
    end
  end

end
