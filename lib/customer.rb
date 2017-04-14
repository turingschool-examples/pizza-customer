class Customer
  attr_reader :profile

  def initialize(*args)
    @profile = {
      name: args[0],
      address: args[1],
      phone: args[2]
    }
    @order = nil
    @order_dates = []
  end

  def order_in_place?
    !!@order
  end

  def place_order(pizza, time)
    @order_dates << time
    @order = {
      pizza: pizza,
    }
  end

  def order_frequency
    @order_dates.length
  end

  def frequent_customer?
    @order_dates.length >= 3
  end
end
