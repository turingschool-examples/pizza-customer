
class Pizza

  attr_reader :size, :type, :crust

  def initialize(size,type,crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    new_order = {
      size: "medium",
      type: "cheese",
      crust: "deep dish"
    }
  end

end
