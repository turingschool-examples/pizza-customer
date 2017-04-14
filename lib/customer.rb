require 'pry'
require 'date'
require './lib/pizza'

class Customer
  attr_reader :profile, :order_in_place

  def initialize(name, address, phone)
    @profile = {
      name: name,
      address: address,
      phone: phone
    }
    @order_in_place = false
    @orders = 0
    @frequent = false
    @order_dates = []
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, date)
    @order_in_place = true
    @orders += 1
    if @orders >= 3
      @frequent = true
    end
    @order_dates << date
    if @order_dates.length >= 3
      if (@order_dates[-1] - @order_dates[-3]).abs > 30
        @frequent = false
      end
    end
  end

  def order_frequency
    @orders
  end

  def frequent_customer?
    @frequent
  end

end