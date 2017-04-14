class Customer
  attr_reader :profile

  def initialize(*args)
    @profile = {
      name: args[0],
      address: args[1],
      phone: args[2]
    }
    @order = nil
  end

  def order_in_place?
    !!@order
  end

  
end
