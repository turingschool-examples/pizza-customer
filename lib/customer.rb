
class Customer
  attr_reader :name, :address, :phone, :ordered, :order_frequency
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @ordered = false
    @order_frequency = 0
    @order_record = []
  end

  def profile
    profile = {}
    profile[:name] = name
    profile[:address] = address
    profile[:phone] = phone
    profile
  end

  def order_in_place?
    ordered
  end

  def place_order(pizza, time)
    @order_frequency += 1
    @order_record << time

    @ordered = true
  end

  def frequent_customer?
    if @order_frequency > 2
      @order_record.count(DateTime.now
    else
      false
    end
  end




end
