class Pizza

  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    { :size => @size,
      :type => @type,
      :crust => @crust }
  end

  def calculate_price
    if @size == "medium"
      12.50
    elsif @size == "large"
      15.00
    end
  end

end
