class Customer

attr_reader :name, :address, :phone

  def initialize(name, address, phone, in_place = false, frequency = 0)
    @name = name
    @address = address
    @phone = phone
    @in_place = in_place
    @frequency = frequency
  end

  def profile
    {name: @name, address: @address, phone: @phone}
  end

  def order_in_place?
    @in_place
  end

  def place_order(pizza, time)
    @in_place = true
    @frequency += 1
  end

  def order_frequency
    @frequency
  end

  def frequent_customer?
    if @frequency < 3 #&& time > 30 days 
      false
    else
      true
    end
  end


end
