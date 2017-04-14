class Customer
  attr_reader :name, :address, :phone
  def initialize(*args)
    @name = args[0]
    @address = args[1]
    @phone = args[2]
  end

  def profile
    {
      name: name,
      address: address,
      phone: phone
    }
  end
end
