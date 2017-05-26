class Customer

  attr_reader :name, :address, :phone

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
  end

  def profile
    {:name => @name,
      :address => @address,
      :phone => @phone}
  end

end
