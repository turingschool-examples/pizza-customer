require 'date'
require 'pry'
class Customer
  attr_reader :profile, :placed_order, :orders, :time
    def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @profile = {:name => name, :address => address, :phone => phone}
    @placed_order = false
    @orders = 0
    @time = []
    end

    def order_in_place?
      placed_order
    end

    def place_order(pizza, date_time)
      @placed_order = !placed_order
      @time << date_time.strftime("%m").to_i
      @orders += 1
    end

    def order_frequency
      orders
    end

    def frequent_customer?
      binding.pry
      if orders >= 1
        if time.reduce {|sum, num| (sum - num) / 3} < 3
          true
      else
        false
        end
      end
    end
end
