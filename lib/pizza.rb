require 'pry'

class Pizza
  def initialize(*args)
    @order = {
      size: args[0],
      type: args[1],
      crust: args[2]
    }
  end

  def full_order
    @order
  end
end
