class Pizza

  attr_reader :full_order, :size, :type, :crust

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def calculate_price
    if full_order == {:size=>"medium", :type=>"cheese", :crust=>"deep dish"}
      12.50
    else 
      15.00
    end  
  end

  def full_order
    {
      size: size,
      type: type,
      crust: crust
    }
  end
end