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
    recent = count_recent_orders
    recent >= 3
  end

  def count_recent_orders
    @order_dates.count do |date|
      date >= DateTime.now - 30
    end
  end
end
