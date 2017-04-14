
class Customer
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @order_in_place = false
    @orders = []
  end

  def profile
    {
      name: @name,
      address: @address,
      phone: @phone
    }
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, order_time)
    @order_in_place = true
    @orders << order_time
  end

  def order_frequency
    @orders.length
  end

  def frequent_customer?
    if @orders.length < 3 || !three_within_thirty?
      false
    else
      true
    end
  end

  private

  def three_within_thirty?
    dates  = orders_into_date_numbers
    if dates[0] - dates[2] < 30
      true
    else
      false
    end
  end
  
  def orders_into_date_numbers
    @orders.map{|order| order.mjd}
  end

end