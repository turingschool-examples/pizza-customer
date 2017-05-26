require './lib/pizza.rb'

class Customer

  attr_reader :name,
              :address,
              :phone,
              :orders,
              :order_in_place,
              :order_frequency

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @orders = []
    @order_in_place = false
    @order_frequency = 0
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
    @orders << [pizza, date_time]
    @order_frequency += 1
  end

  def calculate_order_frequency
    @orders.each do |order|
      if (DateTime.now.to_date - order[1].to_date) > 30
        @order_frequency -= 1
      end
    end
  end

  def frequent_customer?
    calculate_order_frequency
    true if @order_frequency > 2
  end

end
