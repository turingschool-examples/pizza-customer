class Pizza
  attr_reader :size, :type, :crust, :price

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
    @price = price
  end

  def calculate_price(price)
    pizza_1 = Pizza.new(12.50)
    pizza_2 = Pizza.new(15.00)
  end

  def full_order
    
  end

end
