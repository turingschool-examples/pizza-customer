class Customer
  attr_reader :profile, :order_frequency

  def initialize(*args)
    @profile = {
      name: args[0],
      address: args[1],
      phone: args[2]
    }
    @order = nil
    @order_frequency = 0
  end

  def order_in_place?
    !!@order
  end

  def place_order(pizza, time)
    @order_frequency += 1
    @order = {
      pizza: pizza,
      time: time
    }
  end
end
