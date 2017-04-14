require 'date'
class Customer

  def initialize(name, address, phone)
    @name           = name
    @address        = address
    @phone          = phone
    @order_in_place = false
    @orders         = []
  end

  def profile
    {
      :name    => @name,
      :address => @address,
      :phone   => @phone
    }
  end

  def order_in_place?
    @order_in_place
  end

  def place_order(pizza, time)
    order = Pizza.new([:size], [:type], [:crust])
    @orders << time
    @order_in_place = true
  end

  def order_frequency
    @orders.count
  end

  def frequent_customer?
    if @orders.count < 3 || !three_within_thirty
      false
    else
      true
    end
  end

  def three_within_thirty
    first = @orders[0]
    third = @orders[2]
    if first - third > 30
      false
    else
      true
    end
  end
  
end
