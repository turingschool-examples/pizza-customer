require 'date'
require 'time'
require_relative 'pizza'
class Customer
  attr_accessor :name,
              :address,
              :phone_number,
              :order_start,
              :order_in_place,
              :test_order_frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone_number = phone
    @order_in_place = false
    @test_order_frequency = 0

  end

  def profile
    prof = { :name => "Lauren",
    :address => "1700 Blake St.",
    :phone => "505-110-1001" }
    prof
  end

  def order_in_place?
    @order_in_place

  end

  def order_frequency
    @test_order_frequency
  end

  def place_order(pizza, date_time)
    @order_in_place = true
    @test_order_frequency += 1

  end

  def frequent_customer?
    if @test_order_frequency >= 3
      true
    else
      false
    end
  end



end
