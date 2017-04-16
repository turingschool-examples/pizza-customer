require "pry"
class Customer
  attr_reader :profile, :order, :order_frequency, :frequent_customer, :order_dates

  def initialize(name, address, phone)
    @profile = {
      name: name,
      address: address,
      phone: phone
    }
    @order = false
    @order_frequency = 0
    @order_dates = []
    @frequent_customer = false
  end

  def order_in_place?
    order
  end

  def place_order(pizza, date_time)

    @order_dates << date_time
    @order = true
    @order_frequency += 1
  end

  def frequent_customer?
    if @order_dates.length >= 3
        if (@order_dates.last - @order_dates[-3]) <= 30
          @frequent_customer = true
          frequent_customer
        else
          frequent_customer
        end
    else
      frequent_customer
    end
  end
  # binding.pry
end
