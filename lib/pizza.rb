class Pizza
  attr_reader
    def initialize(size, type, crust)
      @size = size
      @type = type
      @crust = crust
    end

    def full_order
      new_order = {}
      new_order[:size] = @size
      new_order[:type] = @type
      new_order[:crust] = @crust
      new_order
    end

    def calculate_price
      
end
