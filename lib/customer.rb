require 'date'

class Customer

  attr_reader :name, :pizza, :address, :phone_number, :profile, :customer, :time
  # attr_accessor :order_in_place?

  def initialize(name, address, phone_number)
    @name = name
    @address = address
    @phone_number = phone_number
    @time = DateTime.now
    @order = false
    @dates = []
  end

  def profile
      profile = {
        name: name,
        address: address,
        phone: phone_number
      }
  end

  def order_in_place?
   !!@order
  end

  def place_order(pizza, time)
    @dates << time
    @order = {
      pizza: pizza
    }
  end

  def order_frequency
    @dates.length
  end

  def frequent_customer?
  #  frequent_customer? true if  order_frequency >= 1

  end

  def counting_dates
    @dates.count do |item|
      item > (DateTime.now - 30)
    end  
  end
end  