class Customer

  def initialize(name, address, phone)
    @name           = name
    @address        = address
    @phone          = phone
    @order_in_place = false
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
  
  
end
