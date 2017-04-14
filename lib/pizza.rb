class Pizza
  attr_reader :size, :type, :crust

  def initialize(size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {
      :size => size,
      :type => type,
      :crust => crust
    }
  end
end