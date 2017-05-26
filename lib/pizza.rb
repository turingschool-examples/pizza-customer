class Pizza

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {
      size: @size,
      type: @type,
      crust: @crust
    }
  end
end
