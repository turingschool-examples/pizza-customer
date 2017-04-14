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
    previous_month = today - 30

    if @order_record.count >= 3
      counter = 0 
      until counter == 3 do
        validation = []
        @order_record.each do |value_pair|
          validation << (value_pair[0] > previous_month)
        end
        counter += 1
      end
      validation.all? { |value| value == true}
    end
  end

end