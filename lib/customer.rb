require 'date'

##
# Customer class creates customers and tracks order history
class Customer
  ##
  # Initialize takes in name address and phone number for a customer so it
  # can track oreder history and create rewards system
  def initialize(name, address, phone)
    @name           = name
    @address        = address
    @phone          = phone
    @order_in_place = false
    @orders         = []
  end
  ##
  # Profile sets up the customers profile.

  def profile
    {
      :name    => @name,
      :address => @address,
      :phone   => @phone
    }
  end
  ##
  # Order in place checks to see if an order is already in place
  #
  # TODO add some sort of time tracking for this.
  def order_in_place?
    @order_in_place
  end
  
  ##
  # place_order acutally places the order and grabs the pizza from the
  # pizza class
  #
  # TODO retrieve prices and other information from pizza class
  def place_order(pizza, time)
    order = Pizza.new([:size], [:type], [:crust])
    @orders << time
    @order_in_place = true
  end

  ##
  # order_frequency checks the number of orders
  def order_frequency
    @orders.count
  end

  ##
  # frequent_customer checks to see if 3 orders have been placed in the last
  # 30 days and if they qualify for rewards program
  def frequent_customer?
    if @orders.count < 3 || !three_within_thirty
      false
    else
      true
    end
  end

  ##
  # three within thirty checks if the orders were within 30 days of eachother..
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
