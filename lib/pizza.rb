class Pizza
  attr_reader :size, :type, :crust
    def initialize(size, type, crust)
      @size = size
      @type = type
      @crust = crust
    end

    def full_order
      new_order = {}
      new_order[:size] = size
      new_order[:type] = type
      new_order[:crust] = crust
      new_order
    end

    def calculate_price
      price = 0.00
      if size == "medium"
        price += 12.50
      elsif size == "large"
        price += 15.00
      else
        pirce
      end
    end
end
