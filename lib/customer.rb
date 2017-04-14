require './lib/pizza'

class Customer
  attr_reader :name, :address, :phone, :order, :order_frequency, :order_record

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order = false
    @order_frequency = 0
    @order_record = []
  end

  def profile
    {
      :name => name,
      :address => address,
      :phone => phone
    }
  end

  def order_in_place?
    order
  end

  def place_order(pizza, date)
    @order = true
    @order_frequency += 1
    @order_record << [date, pizza]
  end

  def frequent_customer?
    today = DateTime.now
    last_month = today - 30

    if @order_record.count >= 3
      validate_last_3_orders(last_month).all? { |value| value == true}
    end
  end

  def validate_last_3_orders(last_month)
    validation = []

    3.times do
      validation = @order_record.map {|value_pair| value_pair[0] > last_month}
    end

    validation
  end
end