require './lib/pizza'

class Customer
  attr_reader :name, :address, :phone, :pizza

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @frequent_customer = false
    @order_in_place = false
    @pizza = Pizza.new(size, topping, style)
  end

  def profile
    profile = {name: "Lauren",
               address: "1700 Blake St.",
               phone: "505-110-1001"}
  end

  def order_in_place
    if place_order(pizza, date) == true
      order_in_place == true
    end
  end

  def place_order(pizza, date)
    pizza("small", "black olive", "thin")
    date = DateTime.now
  end

  def order_in_place?
    order_in_place
  end

  # def frequent_customer
  #   if place_order < 3
  #     frequent_customer
  #   else
  #     frequent_customer == true
  #   end
  # end
  #
  # def frequent_customer?
  #   frequent_customer
  # end
end
