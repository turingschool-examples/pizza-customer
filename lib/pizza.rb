class Pizza
#attr_reader :size, :type, :crust
  #include Prices

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust

  end

  def full_order
    new_order = {
      size: @size,
      type: @type,
      crust: @crust
    }
  end

end
